# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Basefont < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :size, :string
      attribute :color, :string
      attribute :face, :string

      xml do
        element "basefont"
        namespace Hyperlang::Xhtml::Namespace
        map_attribute "id", to: :id
        map_attribute "size", to: :size
        map_attribute "color", to: :color
        map_attribute "face", to: :face
      end
    end
  end
end
