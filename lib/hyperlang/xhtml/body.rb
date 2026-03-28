# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Body < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :div, Hyperlang::Xhtml::Div, collection: true
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :ul, Hyperlang::Xhtml::Ul, collection: true
      attribute :ol, Hyperlang::Xhtml::Ol, collection: true
      attribute :table, Hyperlang::Xhtml::Table, collection: true
      attribute :h1, Hyperlang::Xhtml::H1, collection: true
      attribute :h2, Hyperlang::Xhtml::H2, collection: true
      attribute :h3, Hyperlang::Xhtml::H3, collection: true
      attribute :h4, Hyperlang::Xhtml::H4, collection: true
      attribute :h5, Hyperlang::Xhtml::H5, collection: true
      attribute :h6, Hyperlang::Xhtml::H6, collection: true
      attribute :pre, Hyperlang::Xhtml::Pre, collection: true
      attribute :blockquote, Hyperlang::Xhtml::Blockquote, collection: true
      attribute :hr, Hyperlang::Xhtml::Hr, collection: true
      attribute :form, Hyperlang::Xhtml::Form, collection: true
      attribute :fieldset, Hyperlang::Xhtml::Fieldset, collection: true
      attribute :noscript, Hyperlang::Xhtml::Noscript, collection: true

      xml do
        element "body"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_element "div", to: :div
        map_element "p", to: :p
        map_element "span", to: :span
        map_element "a", to: :a
        map_element "ul", to: :ul
        map_element "ol", to: :ol
        map_element "table", to: :table
        map_element "h1", to: :h1
        map_element "h2", to: :h2
        map_element "h3", to: :h3
        map_element "h4", to: :h4
        map_element "h5", to: :h5
        map_element "h6", to: :h6
        map_element "pre", to: :pre
        map_element "blockquote", to: :blockquote
        map_element "hr", to: :hr
        map_element "form", to: :form
        map_element "fieldset", to: :fieldset
        map_element "noscript", to: :noscript
      end
    end
  end
end
