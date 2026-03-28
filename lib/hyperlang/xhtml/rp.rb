# frozen_string_literal: true

class Hyperlang::Xhtml::Rp < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "rp"
    namespace Hyperlang::Xhtml::Namespace
    map_content to: :content
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
