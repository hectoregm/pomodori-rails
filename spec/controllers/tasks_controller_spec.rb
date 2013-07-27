require 'spec_helper'

describe TasksController do

  describe "GET 'index'" do
    context 'Sanity Check' do
      it 'returns a HTML response' do
        get :index
        expect(response.header['Content-Type']).to include('text/html; charset=utf-8')
      end

      it 'returns 200 code status' do
        get :index
        expect(response.status).to be(200)
      end

      it 'uses index template' do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end


end
