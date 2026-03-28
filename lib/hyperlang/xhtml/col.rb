# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Col < Lutaml::Model::Serializable
      attribute :span, :integer
      attribute :width, :string
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :valign, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "col"
        namespace Hyperlang::Xhtml::Namespace
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
  end
end
