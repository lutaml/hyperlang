# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Head < Lutaml::Model::Serializable
      attribute :title, Hyperlang::Xhtml::Title
      attribute :meta, Hyperlang::Xhtml::Meta, collection: true
      attribute :link, Hyperlang::Xhtml::Link, collection: true
      attribute :style, Hyperlang::Xhtml::Style, collection: true
      attribute :script, Hyperlang::Xhtml::Script, collection: true
      attribute :base, Hyperlang::Xhtml::Base
      attribute :profile, :string

      xml do
        element "head"
        namespace Hyperlang::Xhtml::Namespace
        map_element "title", to: :title
        map_element "meta", to: :meta
        map_element "link", to: :link
        map_element "style", to: :style
        map_element "script", to: :script
        map_element "base", to: :base
        map_attribute "profile", to: :profile
      end
    end
  end
end
