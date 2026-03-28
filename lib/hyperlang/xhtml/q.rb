# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Q < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :cite, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "q"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "cite", to: :cite
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
