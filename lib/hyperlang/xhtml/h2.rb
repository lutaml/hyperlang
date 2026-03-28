# frozen_string_literal: true

class Hyperlang::Xhtml::H2 < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :span, Hyperlang::Xhtml::Span, collection: true
  attribute :a, Hyperlang::Xhtml::A, collection: true
  attribute :strong, Hyperlang::Xhtml::Strong, collection: true
  attribute :em, Hyperlang::Xhtml::Em, collection: true
  attribute :br, Hyperlang::Xhtml::Br, collection: true
  attribute :img, Hyperlang::Xhtml::Img, collection: true
  attribute :klass, :string
  attribute :style, :string
  attribute :id, :string

  xml do
    element "h2"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_element "span", to: :span
    map_element "a", to: :a
    map_element "strong", to: :strong
    map_element "em", to: :em
    map_element "br", to: :br
    map_element "img", to: :img
    map_attribute "class", to: :klass
    map_attribute "style", to: :style
    map_attribute "id", to: :id
  end
end
