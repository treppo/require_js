$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "require_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "require_js"
  s.version     = RequireJs::VERSION
  s.authors     = ["Christian Treppo"]
  s.email       = ["christian@treppo.org"]
  s.homepage    = "https://github.com/treppo/require_js"
  s.summary     = "A flexible RequireJS gem"
  s.description = "Use RequireJS in your ruby project."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_development_dependency "rspec", "2.14.0.rc1"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "rspec-fire"
end
