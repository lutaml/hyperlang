# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Pre < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      attribute :strong, Hyperlang::Xhtml::Strong, collection: true
      attribute :em, Hyperlang::Xhtml::Em, collection: true
      attribute :code, Hyperlang::Xhtml::Code, collection: true
      attribute :klass, :string
      attribute :style, :string
      attribute :id, :string

      xml do
        element "pre"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "a", to: :a
        map_element "span", to: :span
        map_element "strong", to: :strong
        map_element "em", to: :em
        map_element "code", to: :code
        map_attribute "class", to: :klass
        map_attribute "style", to: :style
        map_attribute "id", to: :id
      end
    end
  end
end
