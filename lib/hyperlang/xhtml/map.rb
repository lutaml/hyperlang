# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Map < Lutaml::Model::Serializable
      attribute :area, Hyperlang::Xhtml::Area, collection: true
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :div, Hyperlang::Xhtml::Div, collection: true
      attribute :h1, Hyperlang::Xhtml::H1, collection: true
      attribute :h2, Hyperlang::Xhtml::H2, collection: true
      attribute :h3, Hyperlang::Xhtml::H3, collection: true
      attribute :h4, Hyperlang::Xhtml::H4, collection: true
      attribute :h5, Hyperlang::Xhtml::H5, collection: true
      attribute :h6, Hyperlang::Xhtml::H6, collection: true
      attribute :name, :string
      attribute :id, :string

      xml do
        element "map"
        namespace Hyperlang::Xhtml::Namespace
        map_element "area", to: :area
        map_element "p", to: :p
        map_element "div", to: :div
        map_element "h1", to: :h1
        map_element "h2", to: :h2
        map_element "h3", to: :h3
        map_element "h4", to: :h4
        map_element "h5", to: :h5
        map_element "h6", to: :h6
        map_attribute "name", to: :name
        map_attribute "id", to: :id
      end
    end
  end
end
