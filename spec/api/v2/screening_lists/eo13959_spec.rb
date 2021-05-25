require 'spec_helper'

describe 'Eo13959 List API V2', type: :request do
  include_context 'V2 headers'
  include_context 'ScreeningList::Eo13959 data'
  let(:v2_headers) { { 'Accept' => 'application/vnd.tradegov.webservices.v2' } }

  describe 'GET /consolidated_screening_list/search?sources=13959' do
    let(:params) { { sources: '13959' } }
    before { get '/v2/consolidated_screening_list/search', params, @v2_headers }

    context 'when search parameters are empty' do
      subject { response }
      it_behaves_like 'it contains all ScreeningList::Eo13959 results'
      it_behaves_like 'a successful search request'
    end

    context 'when q is specified' do
      let(:params) { { sources: '13959', q: 'China Telecom' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Eo13959 results that match "China Telecom"'
    end

    context 'when type is specified' do
      subject { response }
      let(:params) { { sources: '13959', type: 'Entity' } }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Eo13959 results that match type "Entity"'
    end
  end
end
