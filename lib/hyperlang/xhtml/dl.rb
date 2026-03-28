# frozen_string_literal: true

class Hyperlang::Xhtml::Dl < Lutaml::Model::Serializable
  attribute :dt, Hyperlang::Xhtml::Dt, collection: true
  attribute :dd, Hyperlang::Xhtml::Dd, collection: true
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "dl"
    namespace Hyperlang::Xhtml::Namespace
    map_element "dt", to: :dt
    map_element "dd", to: :dd
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
