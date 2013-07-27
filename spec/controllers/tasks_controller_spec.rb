require 'spec_helper'

describe TasksController do

  describe "GET 'index'" do
    context 'Sanity Check' do
      it 'returns a HTML response' do
        get :index
        response.header['Content-Type'].should include 'text/html; charset=utf-8'
      end
    end
  end


end
