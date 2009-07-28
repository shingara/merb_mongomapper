# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_mongomapper}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cyril Mougel"]
  s.date = %q{2009-07-28}
  s.description = %q{Merb ORM plugin that provides support for MongoMapper Models}
  s.email = %q{cyril.mougelo@gmail.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "Generators", "lib/generators", "lib/generators/model.rb", "lib/generators/resource_controller.rb", "lib/generators/templates", "lib/generators/templates/model", "lib/generators/templates/model/app", "lib/generators/templates/model/app/models", "lib/generators/templates/model/app/models/%file_name%.rb", "lib/generators/templates/resource_controller", "lib/generators/templates/resource_controller/app", "lib/generators/templates/resource_controller/app/controllers", "lib/generators/templates/resource_controller/app/controllers/%file_name%.rb", "lib/generators/templates/resource_controller/app/views", "lib/generators/templates/resource_controller/app/views/%file_name%", "lib/generators/templates/resource_controller/app/views/%file_name%/edit.html.erb", "lib/generators/templates/resource_controller/app/views/%file_name%/index.html.erb", "lib/generators/templates/resource_controller/app/views/%file_name%/new.html.erb", "lib/generators/templates/resource_controller/app/views/%file_name%/show.html.erb", "lib/merb", "lib/merb/orms", "lib/merb/orms/mongomapper", "lib/merb/orms/mongomapper/connection.rb", "lib/merb/orms/mongomapper/database.yml.sample", "lib/merb_mongomapper.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/shingara/merb_mongomapper}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Merb ORM plugin that provides support for MongoMapper Models}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 1.0.9"])
      s.add_runtime_dependency(%q<jnunemaker-mongomapper>, [">= 0.2.0"])
    else
      s.add_dependency(%q<merb>, [">= 1.0.9"])
      s.add_dependency(%q<jnunemaker-mongomapper>, [">= 0.2.0"])
    end
  else
    s.add_dependency(%q<merb>, [">= 1.0.9"])
    s.add_dependency(%q<jnunemaker-mongomapper>, [">= 0.2.0"])
  end
end
