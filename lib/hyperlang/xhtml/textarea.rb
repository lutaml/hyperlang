# frozen_string_literal: true

class Hyperlang::Xhtml::Textarea < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :name, :string
  attribute :rows, :integer
  attribute :cols, :integer
  attribute :disabled, :string
  attribute :readonly, :string
  attribute :tabindex, :integer
  attribute :accesskey, :string
  attribute :onfocus, :string
  attribute :onblur, :string
  attribute :onselect, :string
  attribute :onchange, :string
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "textarea"
    namespace Hyperlang::Xhtml::Namespace
    map_content to: :content
    map_attribute "name", to: :name
    map_attribute "rows", to: :rows
    map_attribute "cols", to: :cols
    map_attribute "disabled", to: :disabled
    map_attribute "readonly", to: :readonly
    map_attribute "tabindex", to: :tabindex
    map_attribute "accesskey", to: :accesskey
    map_attribute "onfocus", to: :onfocus
    map_attribute "onblur", to: :onblur
    map_attribute "onselect", to: :onselect
    map_attribute "onchange", to: :onchange
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
