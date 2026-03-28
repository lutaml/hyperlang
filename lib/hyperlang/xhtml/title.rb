# frozen_string_literal: true

class Hyperlang::Xhtml::Title < Lutaml::Model::Serializable
  attribute :content, :string

  xml do
    element "title"
    namespace Hyperlang::Xhtml::Namespace
    map_content to: :content
  end
end
