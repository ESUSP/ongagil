require 'rails_helper'

RSpec.describe "Ongs", type: :request do
  describe "GET /ongs" do
    it "works! (now write some real specs)" do
      #login first
      usr = FactoryGirl.create(:usuario_admin)
      post login_path, params: {usuario: attributes_for(:usuario_admin)}
      expect(response).to have_http_status(302)

      get ongs_path
      expect(response).to have_http_status(200)
    end
  end
end
