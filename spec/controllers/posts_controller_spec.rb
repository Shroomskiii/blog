require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  context "GET #index" do
    it "returns a succes response" do
      get :index
      expect(response.successful?).to eq(true)
    end
  end

end
