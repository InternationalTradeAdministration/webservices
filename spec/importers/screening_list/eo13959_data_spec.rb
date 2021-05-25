require 'spec_helper'

describe ScreeningList::Eo13959Data, vcr: { cassette_name: 'importers/screening_list/eo13959.yml' } do
  before { ScreeningList::Eo13959.recreate_index }
  let(:fixtures_file) { "#{Rails.root}/spec/fixtures/screening_lists/treasury_consolidated/consolidated.xml" }
  let(:resource) { fixtures_file }
  let(:importer) { described_class.new(fixtures_file) }
  let(:expected) { YAML.load_file("#{File.dirname(__FILE__)}/eo13959/results.yaml") }

  it_behaves_like 'an importer which can purge old documents'
  it_behaves_like 'an importer which indexes the correct documents'
end
