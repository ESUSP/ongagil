require 'rails_helper'

RSpec.describe "Recebimentos", type: :request do
  describe "GET /recebimentos" do
    it "works! (now write some real specs)" do
      get recebimentos_path
      expect(response).to have_http_status(200)
    end
  end
end
