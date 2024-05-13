require 'rails_helper'

RSpec.describe Book, type: :model do
  it "belongs to an Author" do
      t = Book.reflect_on_association(:author)
      expect(t.macro).to equal(:belongs_to)
  end
end
