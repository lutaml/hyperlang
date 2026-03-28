# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Isindex < Lutaml::Model::Serializable
      attribute :prompt, :string
      attribute :action, :string
      attribute :id, :string

      xml do
        element "isindex"
        namespace Hyperlang::Xhtml::Namespace
        map_attribute "prompt", to: :prompt
        map_attribute "action", to: :action
        map_attribute "id", to: :id
      end
    end
  end
end
