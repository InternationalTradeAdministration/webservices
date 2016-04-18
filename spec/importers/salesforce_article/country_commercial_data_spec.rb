require 'spec_helper'

describe SalesforceArticle::CountryCommercialData do
  include_context 'ItaTaxonomy data'

  let(:fixtures_path) { "#{Rails.root}/spec/fixtures/salesforce_articles/country_commercial_sobjects.yml" }
  let(:client) { StubbedRestforce.new(restforce_collection(fixtures_path)) }
  let(:importer) { described_class.new(client) }
  let(:expected) { YAML.load_file("#{File.dirname(__FILE__)}/country_commercial/results.yaml") }

  it_behaves_like 'an importer which can purge old documents'
  it_behaves_like 'an importer which indexes the correct documents'
end
