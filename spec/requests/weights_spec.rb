require 'rails_helper'

RSpec.describe 'Weights', type: :request do

  before { sign_in user }

  let(:user) { create(:user) }

  describe 'GET index' do
    before { get weights_path }

    it 'statusコードが200であること' do
      expect(response.status).to eq 200
    end

    it 'テンプレートが表示されること' do
      expect(response).to render_template :index
  end

  describe 'GET new' do
    before { get new_weight_path }

    it 'statusコードが200であること' do
      expect(respnse.status).to eq 200
    end

    it 'テンプレートが表示されていること' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    describe '正常系' do
    end

    describe '異常系' do
    end
  end

  describe 'PATCH #update' do
  end

  describe 'GET #destroy' do
  end
end
