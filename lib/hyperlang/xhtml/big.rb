# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Big < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :klass, :string
      attribute :style, :string

      xml do
        element "big"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
        map_attribute "style", to: :style
      end
    end
  end
end
