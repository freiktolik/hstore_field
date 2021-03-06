$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hstore_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "hstore_field"
  spec.version     = HstoreField::VERSION
  spec.authors     = ["Anatolii Freik"]
  spec.email       = ["tolikfreyik@gmail.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Summary of hash store field."
  spec.description = "Description of hash store field."
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

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.1"

  spec.add_development_dependency "pg", "~> 1.2", ">= 1.2.3"
  spec.add_development_dependency "rspec-rails", "~> 4.0"
end
