require 'rails_helper'

RSpec.describe "Authors", type: :request do
  describe "GET /authors" do
    it "displays the index page" do
      get "/authors"
      expect(response).to have_http_status(200)
    end
    
    it "should have 'Authors' in the heading" do
      get "/authors"
      expect(response.body.include?("Authors")).to be true
    end
  end
end
