require 'test_helper'

describe User do
  subject(:user) { Fabricate(:user) }

  describe '#name' do
    let(:full_name) { "#{user.first_name} #{user.last_name}" }

    it 'contain full name' do
      subject.name.must_equal full_name
    end
  end
end
