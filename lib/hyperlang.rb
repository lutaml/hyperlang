# frozen_string_literal: true

require "lutaml/model"
require "hyperlang/version"
require "hyperlang/xhtml/namespace"

# Topologically sorted load order (computed from dependency analysis).
%w[
  a abbr acronym applet area b base basefont bdo big br caption cite code col colgroup dfn em font frame hr i iframe img input isindex kbd label legend link meta option optgroup param object q rb rbc rp rt rtc ruby s samp script select small span strike strong dt h1 h2 h3 h4 h5 h6 p address li dir menu ol pre style sub sup td textarea th title head tr tbody tfoot thead table tt u ul dd div blockquote button center del dl fieldset form ins map noscript body html noframes frameset var
].each do |name|
  require "hyperlang/xhtml/#{name}"
end

module Hyperlang
  # Your code goes here...
end
