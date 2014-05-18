Fabricator('Blog::Post') do
  text_raw 'MyString'
  title 'MyString'

  author fabricator: :user
end
