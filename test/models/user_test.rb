require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'vic6', email: 'chocolate@icecream.com',
                     password: 'hello6', password_confirmation: 'hello6')
    @snippet = @user.snippets.build(title: 'snippin', content: 'marklar')
  end

  test 'user should be valid' do
    assert @user.valid?
  end

  test 'email should be present' do
    @user.email = '   '
    assert_not @user.valid?
  end

  test 'email is unique' do
    user_duplicate = @user.dup
    user_duplicate.email = @user.email.upcase
    @user.save
    assert_not user_duplicate.valid?
  end

  test 'password should not be blank' do
    @user.password = @user.password_confirmation = '    '
    assert_not @user.valid?
  end

  test 'user can create a snippet' do
    assert @user.snippets.first.title == 'snippin'
  end
end
