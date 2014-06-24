Fabricator('Blog::Post') do
  text_raw { Faker::Lorem.paragraphs(5) }
  title { Faker::Lorem.sentence }

  author fabricator: :user
end
