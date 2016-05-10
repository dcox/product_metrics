require 'rails_helper'

RSpec.describe FeaturesController, type: :controller do
  describe "GET new" do
    it "renders the new template" do
      sign_in FactoryGirl.create(:user)
      get :new
      expect(response).to render_template("new")
    end
  end
end
