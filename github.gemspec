require_relative "lib/github/version"

Gem::Specification.new do |spec|
  spec.name        = "github"
  spec.version     = Github::VERSION
  spec.authors     = ["Kashiftariq1997"]
  spec.email       = ["Kashiftariq848@gmail.com"]
  spec.homepage    = "https://github.com/kashiftariq1997/github-engine"
  spec.summary     = "Summary of Github."
  spec.description = "Description of Github."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/kashiftariq1997/github-engine"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kashiftariq1997/github-engine"
  spec.metadata["changelog_uri"] = "https://github.com/kashiftariq1997/github-engine"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.8", "< 8.0"
  spec.add_dependency('omniauth-github')
  spec.add_dependency('omniauth-rails_csrf_protection')
  spec.add_dependency('httparty')
  spec.add_dependency('sidekiq')
  spec.add_dependency('redis')
  spec.add_dependency ('dotenv')
  spec.add_dependency "graphql"
  spec.add_dependency "graphql-client"
  spec.add_dependency "rest-client"
end
