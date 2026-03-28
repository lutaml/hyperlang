# frozen_string_literal: true

class Hyperlang::Xhtml::Rbc < Lutaml::Model::Serializable
  attribute :rb, Hyperlang::Xhtml::Rb, collection: true
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "rbc"
    namespace Hyperlang::Xhtml::Namespace
    map_element "rb", to: :rb
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
