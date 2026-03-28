# frozen_string_literal: true

class Hyperlang::Xhtml::Iframe < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :longdesc, :string
  attribute :name, :string
  attribute :src, :string
  attribute :frameborder, :string
  attribute :marginwidth, :string
  attribute :marginheight, :string
  attribute :scrolling, :string
  attribute :align, :string
  attribute :height, :string
  attribute :width, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "iframe"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "longdesc", to: :longdesc
    map_attribute "name", to: :name
    map_attribute "src", to: :src
    map_attribute "frameborder", to: :frameborder
    map_attribute "marginwidth", to: :marginwidth
    map_attribute "marginheight", to: :marginheight
    map_attribute "scrolling", to: :scrolling
    map_attribute "align", to: :align
    map_attribute "height", to: :height
    map_attribute "width", to: :width
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
