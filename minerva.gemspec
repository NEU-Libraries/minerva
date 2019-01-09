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

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.2"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "selenium-webdriver"
  spec.add_development_dependency "chromedriver-helper"
  spec.add_development_dependency "puma"
  spec.add_development_dependency "tzinfo-data"
end
