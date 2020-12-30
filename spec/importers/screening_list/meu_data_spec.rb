require 'spec_helper'

describe ScreeningList::MeuData, vcr: { cassette_name: 'importers/screening_list/meu.yml' } do
  before { ScreeningList::Meu.recreate_index }
  let(:fixtures_file) { "#{Rails.root}/spec/fixtures/screening_lists/meu/meu.csv" }
  let(:resource) { fixtures_file }
  let(:importer) { described_class.new(fixtures_file) }
  let(:expected) { YAML.load_file("#{File.dirname(__FILE__)}/meu/results.yaml") }

  it_behaves_like 'an importer which can purge old documents'
  it_behaves_like 'an importer which indexes the correct documents'
end
