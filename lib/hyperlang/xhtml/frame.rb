# frozen_string_literal: true

class Hyperlang::Xhtml::Frame < Lutaml::Model::Serializable
  attribute :longdesc, :string
  attribute :name, :string
  attribute :src, :string
  attribute :frameborder, :string
  attribute :marginwidth, :string
  attribute :marginheight, :string
  attribute :noresize, :string
  attribute :scrolling, :string
  attribute :id, :string

  xml do
    element "frame"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "longdesc", to: :longdesc
    map_attribute "name", to: :name
    map_attribute "src", to: :src
    map_attribute "frameborder", to: :frameborder
    map_attribute "marginwidth", to: :marginwidth
    map_attribute "marginheight", to: :marginheight
    map_attribute "noresize", to: :noresize
    map_attribute "scrolling", to: :scrolling
    map_attribute "id", to: :id
  end
end
