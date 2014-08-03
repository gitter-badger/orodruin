Fabricator(:user) do
  first_name { Faker::Name.first_name }
  nickname { sequence(:nickname) { |n| "BlackMothafuckaNigga#{n}" } }
  last_name { Faker::Name.last_name }

  email { Faker::Internet.email }

  password 'test-password'
end
