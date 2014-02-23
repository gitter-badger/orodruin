Fabricator('Blog::Post') do
  title       Faker::Lorem.words
  content_raw Faker::Lorem.paragraphs
end
