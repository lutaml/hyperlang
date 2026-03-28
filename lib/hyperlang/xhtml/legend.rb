# frozen_string_literal: true

class Hyperlang::Xhtml::Legend < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :accesskey, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "legend"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "accesskey", to: :accesskey
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
