$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "building_sync_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "building_sync_rails"
  s.version     = BuildingSyncRails::VERSION
  s.authors     = ["Mark Borkum"]
  s.email       = ["mark.borkum@pnnl.gov"]
  s.homepage    = "https://github.com/pnnl/building_sync_rails"
  s.summary     = "BuildingSync on Rails."
  s.description = "BuildingSync on Rails."
  s.license     = "BSD-2-Clause"

  s.files = Dir["{app,bin,config,db,lib,public}/**/*", "LICENSE.txt", "Rakefile", "README.rdoc", "WARRANTY.txt"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "isomorphic", "~> 0.1.1"
  s.add_dependency "logger-application", "~> 0.0.2"
  s.add_dependency "soap4r-ng", "~> 2.0.4"
  s.add_dependency "rails", "~> 4.2.11"

  s.add_development_dependency "sqlite3"
end
