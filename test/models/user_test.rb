require 'test_helper'
 
class UserTest < ActiveSupport::TestCase
  def test_email_is_unique
    u = new_user
    u.save

    assert_not new_user.save
  end

  def test_email_is_valid
    u = new_user email: 'should_fail'
    assert_not u.save
  end

  private
    def new_user(options={})
      User.new(
        email: options[:email] || 'test@test.com',
        password: options[:password] || 'secret',
        password_confirmation: options[:password_confirmation] || 'secret'
      )
    end
end