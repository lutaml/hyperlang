# frozen_string_literal: true

require "spec_helper"

RSpec.describe Hyperlang::Xhtml::Ul do
  it "parses an unordered list" do
    xml = <<~XML
      <xhtml:ul xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:li>Item 1</xhtml:li>
        <xhtml:li>Item 2</xhtml:li>
      </xhtml:ul>
    XML
    ul = described_class.from_xml(xml)
    expect(ul.li.length).to eq(2)
    expect(ul.li.first.content).to eq(["Item 1"])
  end
end

RSpec.describe Hyperlang::Xhtml::Table do
  it "parses a table with rows and cells" do
    xml = <<~XML
      <xhtml:table xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:tr>
          <xhtml:td>Cell 1</xhtml:td>
          <xhtml:td>Cell 2</xhtml:td>
        </xhtml:tr>
      </xhtml:table>
    XML
    table = described_class.from_xml(xml)
    expect(table.tr.length).to eq(1)
    expect(table.tr.first.td.length).to eq(2)
    expect(table.tr.first.td.first.content).to eq(["Cell 1"])
  end

  it "parses a table with thead and tbody" do
    xml = <<~XML
      <xhtml:table xmlns:xhtml="http://www.w3.org/1999/xhtml">
        <xhtml:thead>
          <xhtml:tr>
            <xhtml:th>Header</xhtml:th>
          </xhtml:tr>
        </xhtml:thead>
        <xhtml:tbody>
          <xhtml:tr>
            <xhtml:td>Data</xhtml:td>
          </xhtml:tr>
        </xhtml:tbody>
      </xhtml:table>
    XML
    table = described_class.from_xml(xml)
    expect(table.thead).not_to be_nil
    expect(table.thead.tr.first.th.first.content).to eq(["Header"])
    expect(table.tbody.length).to eq(1)
    expect(table.tbody.first.tr.first.td.first.content).to eq(["Data"])
  end
end
