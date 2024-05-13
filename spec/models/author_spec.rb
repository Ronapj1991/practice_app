require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have many books" do
    should respond_to(:books)
  end
end
