require 'spec_helper'

describe 'MBS List API V2', type: :request do
  include_context 'V2 headers'
  include_context 'ScreeningList::Mbs data'

  describe 'GET /consolidated_screening_list/search?sources=mbs' do
    let(:params) { { sources: 'MBS' } }
    before { get '/v2/consolidated_screening_list/search', params, @v2_headers }

    context 'when search parameters are empty' do
      subject { response }
      it_behaves_like 'it contains all ScreeningList::Mbs results'
      it_behaves_like 'a successful search request'
    end

    context 'when q is specified' do
      let(:params) { { sources: 'MBS', q: 'PRESIDENCY OF DEFENSE INDUSTRIES' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Mbs results that match "PRESIDENCY OF DEFENSE INDUSTRIES"'
    end

    context 'when countries is specified' do
      let(:params) { { sources: 'MBS', countries: 'TR' } }
      subject { response }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Mbs results that match countries "TR"'
    end

    context 'when type is specified' do
      subject { response }
      let(:params) { { sources: 'MBS', type: 'Entity' } }
      it_behaves_like 'a successful search request'
      it_behaves_like 'it contains all ScreeningList::Mbs results that match type "Entity"'
    end
  end
end
