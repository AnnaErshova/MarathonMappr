require 'rails_helper'

RSpec.describe "Marathons", type: :request do
  describe "GET /marathons" do
    it "works! (now write some real specs)" do
      get marathons_path
      expect(response).to have_http_status(200)
    end
  end
end
