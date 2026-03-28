# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Select < Lutaml::Model::Serializable
      attribute :optgroup, Hyperlang::Xhtml::Optgroup, collection: true
      attribute :option, Hyperlang::Xhtml::Option, collection: true
      attribute :name, :string
      attribute :size, :integer
      attribute :multiple, :string
      attribute :disabled, :string
      attribute :tabindex, :integer
      attribute :onfocus, :string
      attribute :onblur, :string
      attribute :onchange, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "select"
        namespace Hyperlang::Xhtml::Namespace
        map_element "optgroup", to: :optgroup
        map_element "option", to: :option
        map_attribute "name", to: :name
        map_attribute "size", to: :size
        map_attribute "multiple", to: :multiple
        map_attribute "disabled", to: :disabled
        map_attribute "tabindex", to: :tabindex
        map_attribute "onfocus", to: :onfocus
        map_attribute "onblur", to: :onblur
        map_attribute "onchange", to: :onchange
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
