# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Button < Lutaml::Model::Serializable
      attribute :content, :string, collection: true
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :div, Hyperlang::Xhtml::Div, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      attribute :strong, Hyperlang::Xhtml::Strong, collection: true
      attribute :em, Hyperlang::Xhtml::Em, collection: true
      attribute :name, :string
      attribute :value, :string
      attribute :type, :string
      attribute :disabled, :string
      attribute :tabindex, :integer
      attribute :accesskey, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "button"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "p", to: :p
        map_element "div", to: :div
        map_element "span", to: :span
        map_element "strong", to: :strong
        map_element "em", to: :em
        map_attribute "name", to: :name
        map_attribute "value", to: :value
        map_attribute "type", to: :type
        map_attribute "disabled", to: :disabled
        map_attribute "tabindex", to: :tabindex
        map_attribute "accesskey", to: :accesskey
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
