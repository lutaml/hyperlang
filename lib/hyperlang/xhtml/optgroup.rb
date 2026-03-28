# frozen_string_literal: true

class Hyperlang::Xhtml::Optgroup < Lutaml::Model::Serializable
  attribute :option, Hyperlang::Xhtml::Option, collection: true
  attribute :disabled, :string
  attribute :label, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "optgroup"
    namespace Hyperlang::Xhtml::Namespace
    map_element "option", to: :option
    map_attribute "disabled", to: :disabled
    map_attribute "label", to: :label
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
