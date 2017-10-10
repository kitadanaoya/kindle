require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "Ecample User", email: "example@test.com", password: "example", password_confirmation: "example")
  end
  
  test "empty name" do
    @user.name = ""
    assert_not @user.valid?
  end
  
  test "name too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  
  test "empty email" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  test "email too long" do
    @user.email = "a" * 256 + "@test.com"
    assert_not @user.valid?
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email address should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "empty password" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  
  test "password should have minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
  
end
