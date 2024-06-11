require 'rails_helper'

RSpec.describe "Authors", type: :request do
    it "should create a book under an author" do
        author = FactoryBot.create :author
        expect {
            author.books.create(name: "new book")
        }.to change { Book.count }.by(1)
    end
end