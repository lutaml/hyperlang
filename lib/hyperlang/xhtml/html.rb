# frozen_string_literal: true

class Hyperlang::Xhtml::Html < Lutaml::Model::Serializable
  attribute :head, Hyperlang::Xhtml::Head
  attribute :body, Hyperlang::Xhtml::Body

  xml do
    element "html"
    namespace Hyperlang::Xhtml::Namespace
    map_element "head", to: :head
    map_element "body", to: :body
  end
end
