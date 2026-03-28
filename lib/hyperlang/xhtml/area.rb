# frozen_string_literal: true

class Hyperlang::Xhtml::Area < Lutaml::Model::Serializable
  attribute :shape, :string
  attribute :coords, :string
  attribute :href, :string
  attribute :nohref, :string
  attribute :alt, :string
  attribute :tabindex, :integer
  attribute :accesskey, :string
  attribute :id, :string

  xml do
    element "area"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "shape", to: :shape
    map_attribute "coords", to: :coords
    map_attribute "href", to: :href
    map_attribute "nohref", to: :nohref
    map_attribute "alt", to: :alt
    map_attribute "tabindex", to: :tabindex
    map_attribute "accesskey", to: :accesskey
    map_attribute "id", to: :id
  end
end
