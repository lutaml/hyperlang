# frozen_string_literal: true

class Hyperlang::Xhtml::Address < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :p, Hyperlang::Xhtml::P, collection: true
  attribute :span, Hyperlang::Xhtml::Span, collection: true
  attribute :a, Hyperlang::Xhtml::A, collection: true
  attribute :em, Hyperlang::Xhtml::Em, collection: true
  attribute :strong, Hyperlang::Xhtml::Strong, collection: true

  xml do
    element "address"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_element "p", to: :p
    map_element "span", to: :span
    map_element "a", to: :a
    map_element "em", to: :em
    map_element "strong", to: :strong
  end
end
