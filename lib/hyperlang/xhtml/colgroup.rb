# frozen_string_literal: true

class Hyperlang::Xhtml::Colgroup < Lutaml::Model::Serializable
  attribute :col, Hyperlang::Xhtml::Col, collection: true
  attribute :span, :integer
  attribute :width, :string
  attribute :align, :string
  attribute :char, :string
  attribute :charoff, :string
  attribute :valign, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "colgroup"
    namespace Hyperlang::Xhtml::Namespace
    map_element "col", to: :col
    map_attribute "span", to: :span
    map_attribute "width", to: :width
    map_attribute "align", to: :align
    map_attribute "char", to: :char
    map_attribute "charoff", to: :charoff
    map_attribute "valign", to: :valign
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
