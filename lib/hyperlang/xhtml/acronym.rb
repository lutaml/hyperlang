# frozen_string_literal: true

class Hyperlang::Xhtml::Acronym < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :title, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "acronym"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "title", to: :title
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
