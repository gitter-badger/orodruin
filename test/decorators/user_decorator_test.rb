require 'test_helper'

describe UserDecorator do
  let(:user) { OpenStruct.new(email: 'test@example.com') }
  subject { UserDecorator.new(user) }

  describe '#avatar_url' do
    let(:url) { URI.parse(subject.avatar_url) }

    it 'returns Gravatar URL' do
      url.host.must_include 'gravatar'
    end

    it 'is SSL connection' do
      url.scheme.must_equal 'https'
    end

    it 'include proper MD5 sum' do
      url.path.must_include '55502f40dc8b7c769880b10874abc9d0'
    end
  end
end
