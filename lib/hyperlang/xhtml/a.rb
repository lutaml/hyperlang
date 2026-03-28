# frozen_string_literal: true

class Hyperlang::Xhtml::A < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :href, :string
  attribute :name, :string
  attribute :hreflang, :string
  attribute :type, :string
  attribute :rel, :string
  attribute :rev, :string
  attribute :charset, :string
  attribute :accesskey, :string
  attribute :tabindex, :integer
  attribute :shape, :string
  attribute :coords, :string
  attribute :id, :string
  attribute :klass, :string
  attribute :style, :string

  xml do
    element "a"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "href", to: :href
    map_attribute "name", to: :name
    map_attribute "hreflang", to: :hreflang
    map_attribute "type", to: :type
    map_attribute "rel", to: :rel
    map_attribute "rev", to: :rev
    map_attribute "charset", to: :charset
    map_attribute "accesskey", to: :accesskey
    map_attribute "tabindex", to: :tabindex
    map_attribute "shape", to: :shape
    map_attribute "coords", to: :coords
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
    map_attribute "style", to: :style
  end
end
