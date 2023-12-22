# frozen_string_literal: true

require_relative "lib/coffee_cli/version"

Gem::Specification.new do |spec|
  spec.name = "coffee_cli"
  spec.version = CoffeeCli::VERSION
  spec.authors = ["Henrique Pousa Caltram"]
  spec.email = ["henrivai@hotmail.com"]

  spec.summary = "Easily describe your daily coffee experiences with this easy to use Ruby Gem CLI."
  spec.homepage = "https://github.com/hiqueCa/CoffeeCLI"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hiqueCa/CoffeeCLI/tree/main/coffee_cli"
  spec.metadata["changelog_uri"] = "https://github.com/hiqueCa/CoffeeCLI/blob/main/coffee_cli/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development dependencies
  spec.add_development_dependency "rspec", "~> 3.2"

  # Overall dependencies
  spec.add_dependency "mongo", "~> 2"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
