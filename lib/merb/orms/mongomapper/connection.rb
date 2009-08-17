require "fileutils"
require "mongomapper"


module Merb
  module Orms
    module MongoMapper
      
      class << self
        
        def config_file() Merb.dir_for(:config) / "database.yml" end
        def sample_dest() Merb.dir_for(:config) / "database.yml.sample" end
        def sample_source() File.dirname(__FILE__) / "database.yml.sample" end
      
        def copy_sample_config
          FileUtils.cp sample_source, sample_dest unless File.exists?(sample_dest)
        end
        
        def get_config
          # Convert string keys to symbols
          full_config = Erubis.load_yaml_file(config_file)
          config = (Merb::Plugins.config[:merb_mongomapper] = {})
          (full_config[Merb.environment.to_sym] || full_config[Merb.environment] || full_config[:development]).each do |key, value|
            config[key.to_sym] = value
          end
          config
        end
        
        def config
          @config ||= get_config
        end

        def database
          (config[:database_prefix] || '') + (config[:database] || '') + (config[:database_suffix] || '')
        end
        
        def connect
          no_database_file unless File.exists?(config_file)

          # it is possible that we have been passed an array of hosts - attempt each in turn until one is found
          host = config[:host] || 'localhost'
          port = config[:port] || 27017
          begin
            Merb.logger.info!("Attempting connection to the '#{database}' database on '#{host}' ...")
            ::MongoMapper.connection = XGen::Mongo::Driver::Mongo.new(host, port)
            Merb.logger.info!("Connected to '#{host}'")
            ::MongoMapper.database = database
            return true
          rescue Errno::ECONNREFUSED
            Merb.logger.info!("#{host} not available")
          rescue => e
            Merb.logger.info!("Connection Error: #{e}")
            Merb.print_colorized_backtrace(e)
            exit(1)
          end
        end        

        def no_database_file
          copy_sample_config
          Merb.logger.set_log(STDERR)
          Merb.logger.error! "No database.yml file found at #{config_file}."
          Merb.logger.error! "A sample file was created called #{sample_dest} for you to copy and edit."
          exit(1)
        end
      end
    end
  end
end
