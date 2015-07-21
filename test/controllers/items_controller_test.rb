require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  def setup
    @customer = customers(:one)
    @item = items(:one)
    @item.update_attributes(customer_id: @customer.id)
  end

  test "GET #index" do
    current_customer = @customer
    get :index
    assert_equal current_customer.items, items(:one)
  end
end
