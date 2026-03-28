# frozen_string_literal: true

class Hyperlang::Xhtml::Var < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "var"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
