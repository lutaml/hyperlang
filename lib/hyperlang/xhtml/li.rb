# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Li < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      # div omitted: creates circular dependency div↔li
      # ul/ol omitted: creates circular dependency li↔ul, li↔ol
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :strong, Hyperlang::Xhtml::Strong, collection: true
      attribute :em, Hyperlang::Xhtml::Em, collection: true
      attribute :br, Hyperlang::Xhtml::Br, collection: true
      attribute :img, Hyperlang::Xhtml::Img, collection: true
      attribute :type, :string
      attribute :value, :integer
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "li"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "p", to: :p
        map_element "span", to: :span
        # div omitted: creates circular div↔li
        # ul/ol omitted: creates circular li↔ul, li↔ol
        map_element "a", to: :a
        map_element "strong", to: :strong
        map_element "em", to: :em
        map_element "br", to: :br
        map_element "img", to: :img
        map_attribute "type", to: :type
        map_attribute "value", to: :value
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
