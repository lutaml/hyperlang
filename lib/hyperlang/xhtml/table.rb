# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Table < Lutaml::Model::Serializable
      attribute :caption, Hyperlang::Xhtml::Caption
      attribute :colgroup, Hyperlang::Xhtml::Colgroup, collection: true
      attribute :thead, Hyperlang::Xhtml::Thead
      attribute :tfoot, Hyperlang::Xhtml::Tfoot
      attribute :tbody, Hyperlang::Xhtml::Tbody, collection: true
      attribute :tr, Hyperlang::Xhtml::Tr, collection: true
      attribute :summary, :string
      attribute :width, :string
      attribute :border, :string
      attribute :frame, :string
      attribute :rules, :string
      attribute :cellspacing, :string
      attribute :cellpadding, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "table"
        namespace Hyperlang::Xhtml::Namespace
        map_element "caption", to: :caption
        map_element "colgroup", to: :colgroup
        map_element "thead", to: :thead
        map_element "tfoot", to: :tfoot
        map_element "tbody", to: :tbody
        map_element "tr", to: :tr
        map_attribute "summary", to: :summary
        map_attribute "width", to: :width
        map_attribute "border", to: :border
        map_attribute "frame", to: :frame
        map_attribute "rules", to: :rules
        map_attribute "cellspacing", to: :cellspacing
        map_attribute "cellpadding", to: :cellpadding
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
