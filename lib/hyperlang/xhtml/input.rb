# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Input < Lutaml::Model::Serializable
      attribute :type, :string
      attribute :name, :string
      attribute :value, :string
      attribute :checked, :string
      attribute :disabled, :string
      attribute :readonly, :string
      attribute :size, :integer
      attribute :maxlength, :integer
      attribute :src, :string
      attribute :alt, :string
      attribute :usemap, :string
      attribute :ismap, :string
      attribute :tabindex, :integer
      attribute :accesskey, :string
      attribute :accept, :string
      attribute :onfocus, :string
      attribute :onblur, :string
      attribute :onselect, :string
      attribute :onchange, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "input"
        namespace Hyperlang::Xhtml::Namespace
        map_attribute "type", to: :type
        map_attribute "name", to: :name
        map_attribute "value", to: :value
        map_attribute "checked", to: :checked
        map_attribute "disabled", to: :disabled
        map_attribute "readonly", to: :readonly
        map_attribute "size", to: :size
        map_attribute "maxlength", to: :maxlength
        map_attribute "src", to: :src
        map_attribute "alt", to: :alt
        map_attribute "usemap", to: :usemap
        map_attribute "ismap", to: :ismap
        map_attribute "tabindex", to: :tabindex
        map_attribute "accesskey", to: :accesskey
        map_attribute "accept", to: :accept
        map_attribute "onfocus", to: :onfocus
        map_attribute "onblur", to: :onblur
        map_attribute "onselect", to: :onselect
        map_attribute "onchange", to: :onchange
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
