require 'spec_helper'

describe 'Capta List API V2', type: :request do
  include_context 'V2 headers'
  include_context 'ScreeningList::Cap data'

  describe 'GET /consolidated_screening_list/search?sources=cap' do
    let(:params) { { sources: 'CAP' } }
    before { get '/v2/consolidated_screening_list/search', params, @v2_headers }

    context 'when search parameters are empty' do
      subject { response }
      it_behaves_like 'it contains all ScreeningList::Cap results'
      it_behaves_like 'a successful search request'
    end

    context 'when q is specified' do
      let(:params) { { sources: 'CAP', q: 'kunlun' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Cap results that match "kunlun"'
    end

    context 'when countries is specified' do
      let(:params) { { sources: 'CAP', countries: 'CN' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Cap results that match countries "CN"'
    end

    context 'when type is specified' do
      subject { response }
      let(:params) { { sources: 'CAP', type: 'Entity' } }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Cap results that match type "Entity"'
    end
  end
end
