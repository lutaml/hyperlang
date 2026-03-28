# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Title < Lutaml::Model::Serializable
      attribute :content, :string

      xml do
        element "title"
        namespace Hyperlang::Xhtml::Namespace
        map_content to: :content
      end
    end
  end
end
