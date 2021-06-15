require 'spec_helper'

describe 'Cmic List API V2', type: :request do
  include_context 'V2 headers'
  include_context 'ScreeningList::Cmic data'
  let(:v2_headers) { { 'Accept' => 'application/vnd.tradegov.webservices.v2' } }

  describe 'GET /consolidated_screening_list/search?sources=cmic' do
    let(:params) { { sources: 'CMIC' } }
    before { get '/v2/consolidated_screening_list/search', params, @v2_headers }

    context 'when search parameters are empty' do
      subject { response }
      it_behaves_like 'it contains all ScreeningList::Cmic results'
      it_behaves_like 'a successful search request'
    end

    context 'when q is specified' do
      let(:params) { { sources: 'CMIC', q: 'PANDA ELECTRONICS' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Cmic results that match "PANDA ELECTRONICS"'
    end

    # context 'when type is specified' do
    #   subject { response }
    #   let(:params) { { sources: 'CMIC', type: 'Entity' } }
    #   it_behaves_like 'a successful search request'
    #   it_behaves_like 'it contains all ScreeningList::Cmic results that match type "Entity"'
    # end
  end
end
