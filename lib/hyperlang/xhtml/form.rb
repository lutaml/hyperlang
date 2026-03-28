# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Form < Lutaml::Model::Serializable
      attribute :content, :string
      # fieldset omitted: creates circular dependency form↔fieldset
      attribute :p, Hyperlang::Xhtml::P, collection: true
      attribute :div, Hyperlang::Xhtml::Div, collection: true
      attribute :action, :string
      attribute :method, :string
      attribute :enctype, :string
      attribute :accept_charset, :string
      attribute :accept, :string
      attribute :onsubmit, :string
      attribute :onreset, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "form"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        # fieldset omitted: creates circular form↔fieldset
        map_element "p", to: :p
        map_element "div", to: :div
        map_attribute "action", to: :action
        map_attribute "method", to: :method
        map_attribute "enctype", to: :enctype
        map_attribute "accept-charset", to: :accept_charset
        map_attribute "accept", to: :accept
        map_attribute "onsubmit", to: :onsubmit
        map_attribute "onreset", to: :onreset
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
