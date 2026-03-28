# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Div < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :br, Hyperlang::Xhtml::Br, collection: true
      attribute :strong, Hyperlang::Xhtml::Strong, collection: true
      attribute :em, Hyperlang::Xhtml::Em, collection: true
      attribute :ul, Hyperlang::Xhtml::Ul, collection: true
      attribute :ol, Hyperlang::Xhtml::Ol, collection: true
      attribute :li, Hyperlang::Xhtml::Li, collection: true
      attribute :h1, Hyperlang::Xhtml::H1, collection: true
      attribute :h2, Hyperlang::Xhtml::H2, collection: true
      attribute :h3, Hyperlang::Xhtml::H3, collection: true
      attribute :h4, Hyperlang::Xhtml::H4, collection: true
      attribute :h5, Hyperlang::Xhtml::H5, collection: true
      attribute :h6, Hyperlang::Xhtml::H6, collection: true
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :img, Hyperlang::Xhtml::Img, collection: true
      # blockquote omitted: creates circular dependency div↔blockquote
      attribute :pre, Hyperlang::Xhtml::Pre, collection: true
      attribute :table, Hyperlang::Xhtml::Table, collection: true
      # form omitted: creates circular dependency form↔fieldset
      attribute :klass, :string
      attribute :style, :string
      attribute :id, :string
      attribute :title, :string

      xml do
        element "div"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "span", to: :span
        map_element "p", to: :p
        map_element "br", to: :br
        map_element "strong", to: :strong
        map_element "em", to: :em
        map_element "ul", to: :ul
        map_element "ol", to: :ol
        map_element "li", to: :li
        map_element "h1", to: :h1
        map_element "h2", to: :h2
        map_element "h3", to: :h3
        map_element "h4", to: :h4
        map_element "h5", to: :h5
        map_element "h6", to: :h6
        map_element "a", to: :a
        map_element "img", to: :img
        # blockquote omitted: creates circular div↔blockquote
        map_element "pre", to: :pre
        map_element "table", to: :table
        # form omitted: creates circular form↔fieldset
        map_attribute "class", to: :klass
        map_attribute "style", to: :style
        map_attribute "id", to: :id
        map_attribute "title", to: :title
      end
    end
  end
end
