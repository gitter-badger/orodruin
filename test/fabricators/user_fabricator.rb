Fabricator(:user) do
  first_name { Faker::Name.first_name }
  nickname { sequence(:nickname) { |n| "BlackMothafuckaNigga#{n}" } }

  email { Faker::Internet.email }

  password 'test-password'
end
