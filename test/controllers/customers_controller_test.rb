require 'test_helper'

class CustomersControllerTest < ActionController::TestCase

  def setup
    customer = customers(:one)
  end

  test "POST create with valid input and redirects" do
    assert_difference('Customer.count', 1) do
      post :create, customer: { name: "Test Person", email: "email@idk.com", password: "password", password_confirmation: "password" }
    end
    assert_redirected_to root_path
  end
end
