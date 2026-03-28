# frozen_string_literal: true

class Hyperlang::Xhtml::Dir < Lutaml::Model::Serializable
  attribute :li, Hyperlang::Xhtml::Li, collection: true
  attribute :compact, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "dir"
    namespace Hyperlang::Xhtml::Namespace
    map_element "li", to: :li
    map_attribute "compact", to: :compact
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
