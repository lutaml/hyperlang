# frozen_string_literal: true

module Hyperlang
  module Xhtml
    class Br < Lutaml::Model::Serializable
      xml do
        element "br"
        namespace Hyperlang::Xhtml::Namespace
      end
    end
  end
end
