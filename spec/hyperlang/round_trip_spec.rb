# frozen_string_literal: true

require "spec_helper"

RSpec.describe "XHTML round-trip" do
  def round_trip(xml)
    doc = Hyperlang::Xhtml::Div.from_xml(xml)
    Nokogiri::XML(doc.to_xml, &:noblanks)
  end

  it "round-trips a div with mixed content" do
    input = <<~XML
      <xhtml:div xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:p>Paragraph with <xhtml:span style="bold">bold</xhtml:span> text</xhtml:p>
        <xhtml:p>Another paragraph</xhtml:p>
      </xhtml:div>
    XML
    output = round_trip(input)

    input_doc = Nokogiri::XML(input, &:noblanks)
    expect(output.root.to_html).to eq(input_doc.root.to_html)
  end

  it "round-trips a table" do
    input = <<~XML
      <xhtml:table xmlns:xhtml="http://www.w3.org/1999/xhtml" border="1">
        <xhtml:tr>
          <xhtml:td>A</xhtml:td>
          <xhtml:td>B</xhtml:td>
        </xhtml:tr>
      </xhtml:table>
    XML
    table = Hyperlang::Xhtml::Table.from_xml(input)
    output = Nokogiri::XML(table.to_xml, &:noblanks)
    input_doc = Nokogiri::XML(input, &:noblanks)

    expect(output.root.to_html).to eq(input_doc.root.to_html)
  end

  it "round-trips a list" do
    input = <<~XML
      <xhtml:ul xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:li>First item</xhtml:li>
        <xhtml:li>Second item</xhtml:li>
        <xhtml:li>Third item</xhtml:li>
      </xhtml:ul>
    XML
    ul = Hyperlang::Xhtml::Ul.from_xml(input)
    output = Nokogiri::XML(ul.to_xml, &:noblanks)
    input_doc = Nokogiri::XML(input, &:noblanks)

    expect(output.root.to_html).to eq(input_doc.root.to_html)
  end

  it "round-trips a div with spans" do
    input = <<~XML
      <xhtml:div xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:span>First</xhtml:span>
        <xhtml:span>Second</xhtml:span>
      </xhtml:div>
    XML
    output = round_trip(input)
    input_doc = Nokogiri::XML(input, &:noblanks)

    expect(output.root.to_html).to eq(input_doc.root.to_html)
  end

  it "round-trips an html document" do
    input = <<~XML
      <xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:head>
          <xhtml:title>Test Page</xhtml:title>
        </xhtml:head>
        <xhtml:body>
          <xhtml:h1>Heading</xhtml:h1>
          <xhtml:p>Content</xhtml:p>
        </xhtml:body>
      </xhtml:html>
    XML
    html = Hyperlang::Xhtml::Html.from_xml(input)
    output = Nokogiri::XML(html.to_xml, &:noblanks)
    input_doc = Nokogiri::XML(input, &:noblanks)

    expect(output.root.to_html).to eq(input_doc.root.to_html)
  end
end
