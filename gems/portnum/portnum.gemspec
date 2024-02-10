# frozen_string_literal: true

require_relative "lib/portnum/version"

Gem::Specification.new do |spec|
  spec.name          = "portnum"
  spec.version       = Portnum::VERSION
  spec.authors       = ["Eustaquio Rangel"]
  spec.email         = ["taq@eustaquiorangel.com"]

  spec.summary       = "Aportuguesamento de números"
  spec.description   = "Adiciona os métodos par? e impar? na classe Numeric"
  spec.homepage      = "http://github.com/taq/portnum"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/taq/portnum"
  spec.metadata["changelog_uri"] = "http://github.com/taq/portnum/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |it| it.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |it| File.basename(it) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
