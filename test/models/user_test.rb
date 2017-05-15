require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'vic6', email: 'chocolate@icecream.com',
                     password: 'hello6', password_confirmation: 'hello6')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'email should be present' do
    @user.email = '   '
    assert_not @user.valid?
  end
end
