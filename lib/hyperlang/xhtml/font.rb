# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Font < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :size, :string
      attribute :color, :string
      attribute :face, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "font"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "size", to: :size
        map_attribute "color", to: :color
        map_attribute "face", to: :face
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
