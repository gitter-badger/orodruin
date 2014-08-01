Fabricator('Blog::Post') do
  text_raw { Faker::Lorem.paragraphs(5).join('') }
  title { Faker::Lorem.sentence }

  author fabricator: :user
end
