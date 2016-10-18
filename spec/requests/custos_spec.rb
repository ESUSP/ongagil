require 'rails_helper'

RSpec.describe "Custos", type: :request do
  describe "GET /custos" do
    it "works! (now write some real specs)" do
      get custos_path
      expect(response).to have_http_status(200)
    end
  end
end
