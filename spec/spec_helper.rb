# frozen_string_literal: true

require "hyperlang"
require "nokogiri"

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Lutaml::Model::Config.configure do |config|
  config.xml_adapter_type = :nokogiri
end
