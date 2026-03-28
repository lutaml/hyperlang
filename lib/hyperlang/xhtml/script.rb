# frozen_string_literal: true

class Hyperlang::Xhtml::Script < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :type, :string
  attribute :charset, :string
  attribute :defer, :string
  attribute :src, :string
  attribute :id, :string

  xml do
    element "script"
    namespace Hyperlang::Xhtml::Namespace
    map_content to: :content
    map_attribute "type", to: :type
    map_attribute "charset", to: :charset
    map_attribute "defer", to: :defer
    map_attribute "src", to: :src
    map_attribute "id", to: :id
  end
end
