# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Ins < Lutaml::Model::Serializable
      attribute :content, :string, collection: true
      attribute :cite, :string
      attribute :datetime, :string
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :div, Hyperlang::Xhtml::Div, collection: true
      attribute :ul, Hyperlang::Xhtml::Ul, collection: true
      attribute :ol, Hyperlang::Xhtml::Ol, collection: true
      attribute :li, Hyperlang::Xhtml::Li, collection: true
      attribute :span, Hyperlang::Xhtml::Span, collection: true
      attribute :a, Hyperlang::Xhtml::A, collection: true
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "ins"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "cite", to: :cite
        map_attribute "datetime", to: :datetime
        map_element "p", to: :p
        map_element "div", to: :div
        map_element "ul", to: :ul
        map_element "ol", to: :ol
        map_element "li", to: :li
        map_element "span", to: :span
        map_element "a", to: :a
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
