# frozen_string_literal: true

require_relative "lib/hyperlang/version"

Gem::Specification.new do |spec|
  spec.name = "hyperlang"
  spec.version = Hyperlang::VERSION
  spec.authors = ["Lutaml Team"]
  spec.summary = "Complete XHTML model library for Lutaml"
  spec.description = "XHTML 1.1 Strict, Transitional, and Frameset element models for Lutaml"
  spec.homepage = "https://github.com/lutaml/hyperlang"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/lutaml/hyperlang/releases"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.0.0"

  spec.add_dependency "lutaml-model", "~> 0.8"
end
