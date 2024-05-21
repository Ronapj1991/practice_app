require 'faker'
FactoryBot.define do
  factory :author do |f|
    f.name { Faker::Name.first_name + " " + Faker::Name.last_name  }
  end
end