# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Label < Lutaml::Model::Serializable
      attribute :content, :string, collection: true
      attribute :for, :string
      attribute :accesskey, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "label"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "for", to: :for
        map_attribute "accesskey", to: :accesskey
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
