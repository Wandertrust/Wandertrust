FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email(name: name) }
    password { Faker::Internet.password }
    password_confirmation { password }
  end
end