require 'rails_helper'

RSpec.describe "Ongs", type: :request do
  describe "GET /ongs" do
    it "works! (now write some real specs)" do
      get ongs_path
      expect(response).to have_http_status(200)
    end
  end
end
