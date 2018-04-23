require 'spec_helper'
require 'factory_bot'
describe "Api::V1::UsersController" do
  describe "GET #show" do
    before(:each) do
      @user = FactoryBot.create(:user)
      auth_headers = @user.create_new_auth_token
      request.headers.merge!(auth_headers)
      get :show, id: @user.id
    end

    it 'responds with 200 status code' do
      expect(response.code).to eq('200')
    end
  end
end