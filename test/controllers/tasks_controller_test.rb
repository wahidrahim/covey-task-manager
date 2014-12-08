require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get all" do
    get :all
    assert_response :success
  end

end
