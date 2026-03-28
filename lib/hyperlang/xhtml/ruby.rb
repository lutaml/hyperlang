# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Ruby < Lutaml::Model::Serializable
      attribute :rbc, Hyperlang::Xhtml::Rbc
      attribute :rtc, Hyperlang::Xhtml::Rtc
      attribute :rb, Hyperlang::Xhtml::Rb, collection: true
      attribute :rt, Hyperlang::Xhtml::Rt, collection: true
      attribute :rp, Hyperlang::Xhtml::Rp, collection: true
      attribute :id, :string
      attribute :klass, :string

      xml do
        element "ruby"
        namespace Hyperlang::Xhtml::Namespace
        map_element "rbc", to: :rbc
        map_element "rtc", to: :rtc
        map_element "rb", to: :rb
        map_element "rt", to: :rt
        map_element "rp", to: :rp
        map_attribute "id", to: :id
        map_attribute "class", to: :klass
      end
    end
  end
end
