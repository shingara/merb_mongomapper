require 'rubygems'
require 'rake/gempackagetask'

require 'merb-core'
require 'merb-core/tasks/merb'

GEM_NAME = "merb_mongomapper"
GEM_VERSION = "0.1.1"
AUTHOR = "Cyril Mougel"
EMAIL = "cyril.mougelo@gmail.com"
HOMEPAGE = "http://github.com/shingara/merb_mongomapper"
SUMMARY = "Merb ORM plugin that provides support for MongoMapper Models"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = GEM_NAME
    gem.summary = SUMMARY
    gem.email = EMAIL
    gem.homepage = HOMEPAGE
    gem.authors = ["Cyril Mougel"]
    gem.rubyforge_project = "merb_mongomapper"
    
    gem.add_dependency('merb-core', '>= 1.0.9')
    gem.add_dependency("mongomapper", "~>0.3.3")
  end

  Jeweler::RubyforgeTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

desc "install the plugin as a gem"
task :install do
  Merb::RakeHelper.install(GEM_NAME, :version => GEM_VERSION)
end

desc "Uninstall the gem"
task :uninstall do
  Merb::RakeHelper.uninstall(GEM_NAME, :version => GEM_VERSION)
end
