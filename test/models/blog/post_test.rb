require 'test_helper'

describe Blog::Post do
  subject(:post) { Fabricate('Blog::Post') }

  it 'must set text on save' do
    subject.text_raw = '*text*'
    subject.save

    subject.text.must_equal "<p><em>text</em></p>\n"
  end
end
