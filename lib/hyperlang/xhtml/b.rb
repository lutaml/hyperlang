# frozen_string_literal: true

class Hyperlang::Xhtml::B < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :id, :string
  attribute :klass, :string
  attribute :style, :string

  xml do
    element "b"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
    map_attribute "style", to: :style
  end
end
