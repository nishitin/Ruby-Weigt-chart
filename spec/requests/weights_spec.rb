require 'rails_helper'

RSpec.describe 'Weights', type: :request do

  before { sign_in user }

  let(:user) { create(:user) }

  describe 'GET index' do
    before { get weights_path }

    it 'statusコードが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe 'GET new' do
    before { get new_weight_path }

  end
end
