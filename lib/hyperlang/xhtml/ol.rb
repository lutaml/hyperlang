# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Ol < Lutaml::Model::Serializable
      attribute :li, Hyperlang::Xhtml::Li, collection: true
      attribute :type, :string
      attribute :start, :integer
      attribute :compact, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "ol"
        namespace Hyperlang::Xhtml::Namespace
        map_element "li", to: :li
        map_attribute "type", to: :type
        map_attribute "start", to: :start
        map_attribute "compact", to: :compact
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
