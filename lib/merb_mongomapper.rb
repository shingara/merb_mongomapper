# make sure we're running inside Merb
if defined?(Merb::Plugins)

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:merb_mongomapper] = {}
  require File.join(File.dirname(__FILE__) / "merb" / "orms" / "mongomapper" / "connection" )
  
  
  class Merb::Orms::MongoMapper::Connect < Merb::BootLoader
    after BeforeAppLoads
  
    def self.run
      Merb::Orms::MongoMapper.connect
    end
    
  end

end

class MerbMongomapper
  VERSION = '0.1.7'
end
