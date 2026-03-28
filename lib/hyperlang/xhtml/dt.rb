# frozen_string_literal: true

class Hyperlang::Xhtml::Dt < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :span, Hyperlang::Xhtml::Span, collection: true
  attribute :a, Hyperlang::Xhtml::A, collection: true
  attribute :strong, Hyperlang::Xhtml::Strong, collection: true
  attribute :em, Hyperlang::Xhtml::Em, collection: true
  attribute :br, Hyperlang::Xhtml::Br, collection: true
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "dt"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_element "span", to: :span
    map_element "a", to: :a
    map_element "strong", to: :strong
    map_element "em", to: :em
    map_element "br", to: :br
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
