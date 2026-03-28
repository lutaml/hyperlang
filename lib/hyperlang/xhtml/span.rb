# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Span < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :style, :string
      attribute :klass, :string
      attribute :id, :string
      attribute :title, :string

      xml do
        element "span"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "style", to: :style
        map_attribute "class", to: :klass
        map_attribute "id", to: :id
        map_attribute "title", to: :title
      end
    end
  end
end
