# frozen_string_literal: true

class Hyperlang::Xhtml::Rt < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :rbspan, :integer
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "rt"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_attribute "rbspan", to: :rbspan
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
