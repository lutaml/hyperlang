# frozen_string_literal: true

class Hyperlang::Xhtml::Tfoot < Lutaml::Model::Serializable
  attribute :tr, Hyperlang::Xhtml::Tr, collection: true
  attribute :align, :string
  attribute :char, :string
  attribute :charoff, :string
  attribute :valign, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "tfoot"
    namespace Hyperlang::Xhtml::Namespace
    map_element "tr", to: :tr
    map_attribute "align", to: :align
    map_attribute "char", to: :char
    map_attribute "charoff", to: :charoff
    map_attribute "valign", to: :valign
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
