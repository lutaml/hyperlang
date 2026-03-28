# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Applet < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :codebase, :string
      attribute :archive, :string
      attribute :code, :string
      attribute :object, :string
      attribute :alt, :string
      attribute :name, :string
      attribute :width, :string
      attribute :height, :string
      attribute :align, :string
      attribute :hspace, :string
      attribute :vspace, :string
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "applet"
        namespace Hyperlang::Xhtml::Namespace
        mixed_content
        map_content to: :content
        map_attribute "codebase", to: :codebase
        map_attribute "archive", to: :archive
        map_attribute "code", to: :code
        map_attribute "object", to: :object
        map_attribute "alt", to: :alt
        map_attribute "name", to: :name
        map_attribute "width", to: :width
        map_attribute "height", to: :height
        map_attribute "align", to: :align
        map_attribute "hspace", to: :hspace
        map_attribute "vspace", to: :vspace
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
