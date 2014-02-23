require 'test_helper'

describe Blog::Post do
  subject(:post) { Fabricate('Blog::Post') }

  describe '#content' do
    it 'cannot be changed directly' do
      proc { subject.content = 'Lol' }.must_raise(NoMethodError)
    end
  end
end
