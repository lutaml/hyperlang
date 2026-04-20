# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Sup < Lutaml::Model::Serializable
      attribute :content, :string, collection: true
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "sup"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
