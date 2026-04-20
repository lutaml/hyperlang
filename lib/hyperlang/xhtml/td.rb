# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Td < Lutaml::Model::Serializable
      attribute :content, :string, collection: true
      attribute :abbr, :string
      attribute :axis, :string
      attribute :headers, :string
      attribute :scope, :string
      attribute :rowspan, :integer
      attribute :colspan, :integer
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :valign, :string
      attribute :nowrap, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "td"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "abbr", to: :abbr
        map_attribute "axis", to: :axis
        map_attribute "headers", to: :headers
        map_attribute "scope", to: :scope
        map_attribute "rowspan", to: :rowspan
        map_attribute "colspan", to: :colspan
        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "valign", to: :valign
        map_attribute "nowrap", to: :nowrap
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
