# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Tr < Lutaml::Model::Serializable
      attribute :th, Hyperlang::Xhtml::Th, collection: true
      attribute :td, Hyperlang::Xhtml::Td, collection: true
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :valign, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "tr"
        namespace Hyperlang::Xhtml::Namespace
        map_element "th", to: :th
        map_element "td", to: :td
        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "valign", to: :valign
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
