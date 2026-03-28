# frozen_string_literal: true

require_relative "lib/hyperlang/version"

Gem::Specification.new do |spec|
  spec.name = "hyperlang"
  spec.version = Hyperlang::VERSION
  spec.authors = ["Ribose Inc."]
  spec.email = ["open.source@ribose.com"]

  spec.summary = "Complete XHTML model library for Lutaml"
  spec.description = "XHTML 1.1 Strict, Transitional, and Frameset element models for Lutaml"
  spec.homepage = "https://github.com/lutaml/hyperlang"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/lutaml/hyperlang/releases"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem
  # that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0.0"

  spec.add_dependency "lutaml-model", "~> 0.8.0"
end
