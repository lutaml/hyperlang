# frozen_string_literal: true

class Hyperlang::Xhtml::Fieldset < Lutaml::Model::Serializable
  attribute :content, :string
  attribute :legend, Hyperlang::Xhtml::Legend
  attribute :p, Hyperlang::Xhtml::P, collection: true
  attribute :div, Hyperlang::Xhtml::Div, collection: true
  attribute :input, Hyperlang::Xhtml::Input, collection: true
  attribute :select, Hyperlang::Xhtml::Select, collection: true
  attribute :textarea, Hyperlang::Xhtml::Textarea, collection: true
  attribute :button, Hyperlang::Xhtml::Button, collection: true
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "fieldset"
    namespace Hyperlang::Xhtml::Namespace
    mixed_content
    map_content to: :content
    map_element "legend", to: :legend
    map_element "p", to: :p
    map_element "div", to: :div
    map_element "input", to: :input
    map_element "select", to: :select
    map_element "textarea", to: :textarea
    map_element "button", to: :button
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
