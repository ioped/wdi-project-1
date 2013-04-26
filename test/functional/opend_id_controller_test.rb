require 'test_helper'

class OpendIdControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

  test "should get openid_consumer" do
    get :openid_consumer
    assert_response :success
  end

end
