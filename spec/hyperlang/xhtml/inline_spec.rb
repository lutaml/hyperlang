# frozen_string_literal: true

require "spec_helper"

RSpec.describe Hyperlang::Xhtml::Span do
  it "parses a span with text content" do
    xml = '<xhtml:span xmlns:xhtml="http://www.w3.org/1999/xhtml">Hello</xhtml:span>'
    span = described_class.from_xml(xml)
    expect(span.content).to eq("Hello")
  end

  it "round-trips a span with style attribute" do
    xml = '<xhtml:span xmlns:xhtml="http://www.w3.org/1999/xhtml" style="font-weight: bold">text</xhtml:span>'
    span = described_class.from_xml(xml)
    expect(span.style).to eq("font-weight: bold")
    expect(span.to_xml).to include('style="font-weight: bold"')
  end
end

RSpec.describe Hyperlang::Xhtml::P do
  it "parses a paragraph with text content" do
    xml = '<xhtml:p xmlns:xhtml="http://www.w3.org/1999/xhtml">Hello world</xhtml:p>'
    p = described_class.from_xml(xml)
    expect(p.content).to eq("Hello world")
  end

  it "parses a paragraph with nested spans" do
    xml = <<~XML
      <xhtml:p xmlns:xhtml="http://www.w3.org/1999/xhtml">
        Hello <xhtml:span style="bold">world</xhtml:span>
      </xhtml:p>
    XML
    p = described_class.from_xml(xml)
    expect(p.span.length).to eq(1)
    expect(p.span.first.content).to eq("world")
  end

  it "round-trips a paragraph with class attribute" do
    xml = '<xhtml:p xmlns:xhtml="http://www.w3.org/1999/xhtml" class="note">text</xhtml:p>'
    p = described_class.from_xml(xml)
    expect(p.klass).to eq("note")
    regenerated = p.to_xml
    expect(regenerated).to include("note")
  end
end

RSpec.describe Hyperlang::Xhtml::Div do
  it "parses a div with nested paragraphs" do
    xml = <<~XML
      <xhtml:div xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:p>First</xhtml:p>
        <xhtml:p>Second</xhtml:p>
      </xhtml:div>
    XML
    div = described_class.from_xml(xml)
    expect(div.p.length).to eq(2)
    expect(div.p.first.content).to eq("First")
    expect(div.p.last.content).to eq("Second")
  end
end
