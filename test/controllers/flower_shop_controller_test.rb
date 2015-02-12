require 'test_helper'

class FlowerShopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get wholeseller" do
    get :wholeseller
    assert_response :success
  end

  test "should get retailer" do
    get :retailer
    assert_response :success
  end

  test "should get customer" do
    get :customer
    assert_response :success
  end

end
