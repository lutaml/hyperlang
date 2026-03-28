# frozen_string_literal: true

class Hyperlang::Xhtml::Style < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :type, :string
  attribute :media, :string
  attribute :title, :string
  attribute :id, :string

  xml do
    element "style"
    namespace Hyperlang::Xhtml::Namespace
    map_content to: :content
    map_attribute "type", to: :type
    map_attribute "media", to: :media
    map_attribute "title", to: :title
    map_attribute "id", to: :id
  end
end
