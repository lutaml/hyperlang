# frozen_string_literal: true

class Hyperlang::Xhtml::Meta < Lutaml::Model::Serializable
  attribute :http_equiv, :string
  attribute :name, :string
  attribute :content, :string
  attribute :scheme, :string
  attribute :id, :string

  xml do
    element "meta"
    namespace Hyperlang::Xhtml::Namespace
    map_attribute "http-equiv", to: :http_equiv
    map_attribute "name", to: :name
    map_attribute "content", to: :content
    map_attribute "scheme", to: :scheme
    map_attribute "id", to: :id
  end
end
