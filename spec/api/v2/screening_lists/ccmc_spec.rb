require 'spec_helper'

describe 'Ccmc List API V2', type: :request do
  include_context 'V2 headers'
  include_context 'ScreeningList::Ccmc data'
  let(:v2_headers) { { 'Accept' => 'application/vnd.tradegov.webservices.v2' } }

  describe 'GET /consolidated_screening_list/search?sources=ccmc' do
    let(:params) { { sources: 'CCMC' } }
    before { get '/v2/consolidated_screening_list/search', params, @v2_headers }

    context 'when search parameters are empty' do
      subject { response }
      it_behaves_like 'it contains all ScreeningList::Ccmc results'
      it_behaves_like 'a successful search request'
    end

    context 'when q is specified' do
      let(:params) { { sources: 'CCMC', q: 'China Telecom' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Ccmc results that match "China Telecom"'
    end

    context 'when type is specified' do
      subject { response }
      let(:params) { { sources: 'CCMC', type: 'Entity' } }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Ccmc results that match type "Entity"'
    end
  end
end
