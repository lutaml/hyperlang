# frozen_string_literal: true

class Hyperlang::Xhtml::Frameset < Lutaml::Model::Serializable
  attribute :frame, Hyperlang::Xhtml::Frame, collection: true
  # nested frameset omitted: self-reference creates circular dependency
  attribute :noframes, Hyperlang::Xhtml::Noframes
  attribute :rows, :string
  attribute :cols, :string
  attribute :id, :string

  xml do
    element "frameset"
    namespace Hyperlang::Xhtml::Namespace
    map_element "frame", to: :frame
    # nested frameset omitted: self-reference creates circular dependency
    map_element "noframes", to: :noframes
    map_attribute "rows", to: :rows
    map_attribute "cols", to: :cols
    map_attribute "id", to: :id
  end
end
