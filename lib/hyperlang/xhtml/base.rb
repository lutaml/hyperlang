# frozen_string_literal: true

class Hyperlang::Xhtml::Base < Lutaml::Model::Serializable
  attribute :href, :string
  attribute :id, :string

  xml do
    element "base"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "href", to: :href
    map_attribute "id", to: :id
  end
end
