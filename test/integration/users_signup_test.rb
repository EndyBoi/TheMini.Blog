require "test_helper"

class UserSignupTest < ActionDispatch::IntegrationTest

  test "Invalid signup information" do
    get signup_path
    assert_no_difference "User.count" do
      post users_path, params: {user: { name: "",
                                        email: "user@invalid",
                                        password: "hunter2",
                                        password_confirmation: "not_hunter2" } }      
    end
    assert_template 'users/new'
  end

  test "Valid user signup" do 
    get signup_path
    assert_difference "User.count", 1 do
      post users_path, params: {user: { name: "Test",
                                        email: "Test@Email.com",
                                        password: "hunter2",
                                        password_confirmation: "hunter2" } }      
    end
    follow_redirect!
    assert_template 'users/show'
  end


end