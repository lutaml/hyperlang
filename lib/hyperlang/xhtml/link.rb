# frozen_string_literal: true

class Hyperlang::Xhtml::Link < Lutaml::Model::Serializable
  attribute :charset, :string
  attribute :href, :string
  attribute :hreflang, :string
  attribute :type, :string
  attribute :rel, :string
  attribute :rev, :string
  attribute :media, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "link"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "charset", to: :charset
    map_attribute "href", to: :href
    map_attribute "hreflang", to: :hreflang
    map_attribute "type", to: :type
    map_attribute "rel", to: :rel
    map_attribute "rev", to: :rev
    map_attribute "media", to: :media
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
