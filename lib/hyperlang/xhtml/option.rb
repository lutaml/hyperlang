# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Option < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :selected, :string
      attribute :disabled, :string
      attribute :value, :string
      attribute :label, :string
      attribute :id, :string

      xml do
        element "option"
        namespace Hyperlang::Xhtml::Namespace
        map_content to: :content
        map_attribute "selected", to: :selected
        map_attribute "disabled", to: :disabled
        map_attribute "value", to: :value
        map_attribute "label", to: :label
        map_attribute "id", to: :id
      end
    end
  end
end
