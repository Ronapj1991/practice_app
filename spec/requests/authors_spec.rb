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
  
  describe "GET /authors/:id" do
    it "displays the show page" do
      author = Author.first
      get author_path(author)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /authors/new" do
    it "displays the create page with form" do
      get new_author_path
      expect(response).to have_http_status(200)
      expect(response.body.include?("Create Author")).to be true
    end
  end

  describe "POST /authors" do
    it "creates an author" do
      expect {
        post "/authors", params: { author: { name: "Ron" } }
      }.to change { Author.count }.by(1)
      expect(response).to have_http_status(302)
    end
  end

  describe "GET /authors/:id/edit" do
    it "displays the edit form" do
      author = FactoryBot.create :author
      get edit_author_path(author)
      expect(response).to have_http_status(200)
      expect(response.body.include?("Edit Author")).to be true
    end
  end

  describe "PATCH /authors/:id" do
    it "changes the author name" do
      author = FactoryBot.create :author
      old_name = author.name
      expect {
        put author_path(author), params: { author:{name:"Ron" } }
        author.reload
      }.to change { author.name }.from(old_name).to("Ron")
    end
  end

end
