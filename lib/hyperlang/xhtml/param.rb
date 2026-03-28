# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Param < Lutaml::Model::Serializable
      attribute :name, :string
      attribute :value, :string
      attribute :type, :string
      attribute :valuetype, :string
      attribute :id, :string

      xml do
        element "param"
        namespace Hyperlang::Xhtml::Namespace
        map_attribute "name", to: :name
        map_attribute "value", to: :value
        map_attribute "type", to: :type
        map_attribute "valuetype", to: :valuetype
        map_attribute "id", to: :id
      end
    end
  end
end
