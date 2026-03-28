# frozen_string_literal: true

class Hyperlang::Xhtml::Img < Lutaml::Model::Serializable
  attribute :src, :string
  attribute :alt, :string
  attribute :longdesc, :string
  attribute :height, :string
  attribute :width, :string
  attribute :usemap, :string
  attribute :ismap, :string
  attribute :id, :string
  attribute :klass, :string
  attribute :style, :string
  attribute :title, :string

  xml do
    element "img"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "src", to: :src
    map_attribute "alt", to: :alt
    map_attribute "longdesc", to: :longdesc
    map_attribute "height", to: :height
    map_attribute "width", to: :width
    map_attribute "usemap", to: :usemap
    map_attribute "ismap", to: :ismap
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
    map_attribute "style", to: :style
    map_attribute "title", to: :title
  end
end
