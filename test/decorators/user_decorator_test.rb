require 'test_helper'
require 'rexml/document'

describe UserDecorator do
  let(:user) { OpenStruct.new(email: 'test@example.com') }
  subject(:decorated) { UserDecorator.new(user) }

  describe '#avatar_url' do
    let(:url) { URI.parse(subject.avatar_url) }

    it 'returns Gravatar URL' do
      url.host.must_equal 'secure.gravatar.com'
    end

    it 'is SSL connection' do
      url.scheme.must_equal 'https'
    end

    it 'include proper MD5 sum' do
      url.path.must_equal '/avatar/55502f40dc8b7c769880b10874abc9d0'
    end
  end

  describe '#avatar' do
    subject { REXML::Document.new(decorated.avatar).root }
    let(:url) { 'http://example.com' }

    before do
      stub(decorated).avatar_url { url }
    end

    its(:name) { must_equal 'img' }

    it 'has' do
      subject.attribute('src').value.must_equal url
    end
  end
end
