$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tractor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tractor"
  s.version     = Tractor::VERSION
  s.authors     = ["Jonny Dalgleish"]
  s.email       = ["jonny@30acres.com.au"]
  s.homepage    = "http://30acres.com.au"
  s.summary     = "Email Marketing Manager Engine"
  s.description = "In House Tools for managing email marketing"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"
  
  # rails generate simple_form:install && install in app.
  s.add_dependency "simple_form"
   s.add_dependency "liquid"  

  s.add_dependency "nested_form"
  s.add_dependency "acts_as_list"
  s.add_dependency "carrierwave"
  s.add_development_dependency "sqlite3"
end
