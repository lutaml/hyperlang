# frozen_string_literal: true

class Hyperlang::Xhtml::Rtc < Lutaml::Model::Serializable
  attribute :rt, Hyperlang::Xhtml::Rt, collection: true
  attribute :rp, Hyperlang::Xhtml::Rp, collection: true
  attribute :rbspan, :integer
  attribute :id, :string
  attribute :klass, :string

  xml do
    element "rtc"
    namespace Hyperlang::Xhtml::Namespace
    map_element "rt", to: :rt
    map_element "rp", to: :rp
    map_attribute "rbspan", to: :rbspan
    map_attribute "id", to: :id
    map_attribute "class", to: :klass
  end
end
