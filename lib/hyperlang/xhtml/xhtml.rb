# frozen_string_literal: true

require "lutaml/model"

module Hyperlang
  module Xhtml
    # === Structure Module (4) ===
    autoload :Html, "hyperlang/xhtml/html"
    autoload :Head, "hyperlang/xhtml/head"
    autoload :Title, "hyperlang/xhtml/title"
    autoload :Body, "hyperlang/xhtml/body"

    # === Text Module - Block (10) ===
    autoload :Div, "hyperlang/xhtml/div"
    autoload :P, "hyperlang/xhtml/p"
    autoload :Pre, "hyperlang/xhtml/pre"
    autoload :Address, "hyperlang/xhtml/address"
    autoload :H1, "hyperlang/xhtml/h1"
    autoload :H2, "hyperlang/xhtml/h2"
    autoload :H3, "hyperlang/xhtml/h3"
    autoload :H4, "hyperlang/xhtml/h4"
    autoload :H5, "hyperlang/xhtml/h5"
    autoload :H6, "hyperlang/xhtml/h6"

    # === Text Module - Inline Phrasal (11) ===
    autoload :Abbr, "hyperlang/xhtml/abbr"
    autoload :Acronym, "hyperlang/xhtml/acronym"
    autoload :Cite, "hyperlang/xhtml/cite"
    autoload :Code, "hyperlang/xhtml/code"
    autoload :Dfn, "hyperlang/xhtml/dfn"
    autoload :Em, "hyperlang/xhtml/em"
    autoload :Kbd, "hyperlang/xhtml/kbd"
    autoload :Q, "hyperlang/xhtml/q"
    autoload :Samp, "hyperlang/xhtml/samp"
    autoload :Strong, "hyperlang/xhtml/strong"
    autoload :Var, "hyperlang/xhtml/var"

    # === Text Module - Inline Structural (2) ===
    autoload :Span, "hyperlang/xhtml/span"
    autoload :Br, "hyperlang/xhtml/br"

    # === Hypertext Module (1) ===
    autoload :A, "hyperlang/xhtml/a"

    # === List Module (6) ===
    autoload :Dl, "hyperlang/xhtml/dl"
    autoload :Dt, "hyperlang/xhtml/dt"
    autoload :Dd, "hyperlang/xhtml/dd"
    autoload :Ol, "hyperlang/xhtml/ol"
    autoload :Ul, "hyperlang/xhtml/ul"
    autoload :Li, "hyperlang/xhtml/li"

    # === Object Module (2) ===
    autoload :Object, "hyperlang/xhtml/object"
    autoload :Param, "hyperlang/xhtml/param"

    # === Presentation Module (8) ===
    autoload :B, "hyperlang/xhtml/b"
    autoload :Big, "hyperlang/xhtml/big"
    autoload :I, "hyperlang/xhtml/i"
    autoload :Small, "hyperlang/xhtml/small"
    autoload :Sub, "hyperlang/xhtml/sub"
    autoload :Sup, "hyperlang/xhtml/sup"
    autoload :Tt, "hyperlang/xhtml/tt"
    autoload :Hr, "hyperlang/xhtml/hr"

    # === Edit Module (2) ===
    autoload :Del, "hyperlang/xhtml/del"
    autoload :Ins, "hyperlang/xhtml/ins"

    # === BIDI Module (1) ===
    autoload :Bdo, "hyperlang/xhtml/bdo"

    # === Forms Module (10) ===
    autoload :Form, "hyperlang/xhtml/form"
    autoload :Fieldset, "hyperlang/xhtml/fieldset"
    autoload :Legend, "hyperlang/xhtml/legend"
    autoload :Label, "hyperlang/xhtml/label"
    autoload :Input, "hyperlang/xhtml/input"
    autoload :Select, "hyperlang/xhtml/select"
    autoload :Optgroup, "hyperlang/xhtml/optgroup"
    autoload :Option, "hyperlang/xhtml/option"
    autoload :Textarea, "hyperlang/xhtml/textarea"
    autoload :Button, "hyperlang/xhtml/button"

    # === Table Module (10) ===
    autoload :Table, "hyperlang/xhtml/table"
    autoload :Caption, "hyperlang/xhtml/caption"
    autoload :Colgroup, "hyperlang/xhtml/colgroup"
    autoload :Col, "hyperlang/xhtml/col"
    autoload :Thead, "hyperlang/xhtml/thead"
    autoload :Tfoot, "hyperlang/xhtml/tfoot"
    autoload :Tbody, "hyperlang/xhtml/tbody"
    autoload :Tr, "hyperlang/xhtml/tr"
    autoload :Th, "hyperlang/xhtml/th"
    autoload :Td, "hyperlang/xhtml/td"

    # === Image Module (1) ===
    autoload :Img, "hyperlang/xhtml/img"

    # === Client-side Image Map Module (2) ===
    autoload :Map, "hyperlang/xhtml/map"
    autoload :Area, "hyperlang/xhtml/area"

    # === Metainformation Module (1) ===
    autoload :Meta, "hyperlang/xhtml/meta"

    # === Scripting Module (2) ===
    autoload :Script, "hyperlang/xhtml/script"
    autoload :Noscript, "hyperlang/xhtml/noscript"

    # === Stylesheet Module (1) ===
    autoload :Style, "hyperlang/xhtml/style"

    # === Link Module (1) ===
    autoload :Link, "hyperlang/xhtml/link"

    # === Base Module (1) ===
    autoload :Base, "hyperlang/xhtml/base"

    # === Ruby Module (6) ===
    autoload :Ruby, "hyperlang/xhtml/ruby"
    autoload :Rbc, "hyperlang/xhtml/rbc"
    autoload :Rtc, "hyperlang/xhtml/rtc"
    autoload :Rb, "hyperlang/xhtml/rb"
    autoload :Rt, "hyperlang/xhtml/rt"
    autoload :Rp, "hyperlang/xhtml/rp"

    # === XHTML 1.0 Transitional-only (11) ===
    autoload :Applet, "hyperlang/xhtml/applet"
    autoload :Basefont, "hyperlang/xhtml/basefont"
    autoload :Center, "hyperlang/xhtml/center"
    autoload :Dir, "hyperlang/xhtml/dir"
    autoload :Font, "hyperlang/xhtml/font"
    autoload :Iframe, "hyperlang/xhtml/iframe"
    autoload :Isindex, "hyperlang/xhtml/isindex"
    autoload :Menu, "hyperlang/xhtml/menu"
    autoload :S, "hyperlang/xhtml/s"
    autoload :Strike, "hyperlang/xhtml/strike"
    autoload :U, "hyperlang/xhtml/u"

    # === XHTML 1.0 Frameset-only (3) ===
    autoload :Frame, "hyperlang/xhtml/frame"
    autoload :Frameset, "hyperlang/xhtml/frameset"
    autoload :Noframes, "hyperlang/xhtml/noframes"
  end
end
