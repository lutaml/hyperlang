# frozen_string_literal: true

class Hyperlang::Xhtml::Noscript < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :p, Hyperlang::Xhtml::P, collection: true
  attribute :div, Hyperlang::Xhtml::Div, collection: true
  attribute :ul, Hyperlang::Xhtml::Ul, collection: true
  attribute :ol, Hyperlang::Xhtml::Ol, collection: true
  attribute :table, Hyperlang::Xhtml::Table, collection: true
  attribute :h1, Hyperlang::Xhtml::H1, collection: true
  attribute :h2, Hyperlang::Xhtml::H2, collection: true
  attribute :h3, Hyperlang::Xhtml::H3, collection: true
  attribute :h4, Hyperlang::Xhtml::H4, collection: true
  attribute :h5, Hyperlang::Xhtml::H5, collection: true
  attribute :h6, Hyperlang::Xhtml::H6, collection: true
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "noscript"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_element "p", to: :p
    map_element "div", to: :div
    map_element "ul", to: :ul
    map_element "ol", to: :ol
    map_element "table", to: :table
    map_element "h1", to: :h1
    map_element "h2", to: :h2
    map_element "h3", to: :h3
    map_element "h4", to: :h4
    map_element "h5", to: :h5
    map_element "h6", to: :h6
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
