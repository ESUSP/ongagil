require 'rails_helper'

RSpec.describe "Doadors", type: :request do
  describe "GET /doadors" do
    it "works! (now write some real specs)" do
      get doadors_path
      expect(response).to have_http_status(200)
    end
  end
end
