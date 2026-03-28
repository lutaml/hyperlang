# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Dd < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      # div omitted: creates circular dd→div→li→dd (div→li cycle, div is Phase 4, dd is Phase 3)
      attribute :ul, Hyperlang::Xhtml::Ul, collection: true
      attribute :ol, Hyperlang::Xhtml::Ol, collection: true
      attribute :li, Hyperlang::Xhtml::Li, collection: true
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :strong, Hyperlang::Xhtml::Strong, collection: true
      attribute :em, Hyperlang::Xhtml::Em, collection: true
      attribute :br, Hyperlang::Xhtml::Br, collection: true
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "dd"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "p", to: :p
        map_element "span", to: :span
        # div omitted (circular)
        map_element "ul", to: :ul
        map_element "ol", to: :ol
        map_element "li", to: :li
        map_element "a", to: :a
        map_element "strong", to: :strong
        map_element "em", to: :em
        map_element "br", to: :br
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
