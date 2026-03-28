# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Hr < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "hr"
        namespace Hyperlang::Xhtml::Namespace
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
