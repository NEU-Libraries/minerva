$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "minerva/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "minerva"
  spec.version     = Minerva::VERSION
  spec.authors     = ["David Cliff"]
  spec.email       = ["dgcliff@northeastern.edu"]
  spec.homepage    = "https://github.com/NEU-Libraries/minerva"
  spec.summary     = "Minerva is a Rails engine for basic assignment workflow."
  spec.description = "In concert with Samvera and Valkyrie componenets, Minerva aims to be a viable coordination tool, allowing administration users to describe manual and automated workflows for individuals to follow and apply."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "> 5.2"
end
