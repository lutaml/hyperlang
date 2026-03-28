# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Object < Lutaml::Model::Serializable
      attribute :param, Hyperlang::Xhtml::Param, collection: true
      attribute :content, :string
      attribute :declare, :string
      attribute :classid, :string
      attribute :codebase, :string
      attribute :data, :string
      attribute :type, :string
      attribute :codetype, :string
      attribute :archive, :string
      attribute :standby, :string
      attribute :height, :string
      attribute :width, :string
      attribute :name, :string
      attribute :tabindex, :integer
      attribute :usemap, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "object"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_element "param", to: :param
        map_content to: :content
        map_attribute "declare", to: :declare
        map_attribute "classid", to: :classid
        map_attribute "codebase", to: :codebase
        map_attribute "data", to: :data
        map_attribute "type", to: :type
        map_attribute "codetype", to: :codetype
        map_attribute "archive", to: :archive
        map_attribute "standby", to: :standby
        map_attribute "height", to: :height
        map_attribute "width", to: :width
        map_attribute "name", to: :name
        map_attribute "tabindex", to: :tabindex
        map_attribute "usemap", to: :usemap
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
