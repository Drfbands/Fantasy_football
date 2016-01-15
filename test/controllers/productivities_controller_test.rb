require 'test_helper'

class ProductivitiesControllerTest < ActionController::TestCase
  setup do
    @productivity = productivities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productivities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productivity" do
    assert_difference('Productivity.count') do
      post :create, productivity: { date: @productivity.date }
    end

    assert_redirected_to productivity_path(assigns(:productivity))
  end

  test "should show productivity" do
    get :show, id: @productivity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productivity
    assert_response :success
  end

  test "should update productivity" do
    patch :update, id: @productivity, productivity: { date: @productivity.date }
    assert_redirected_to productivity_path(assigns(:productivity))
  end

  test "should destroy productivity" do
    assert_difference('Productivity.count', -1) do
      delete :destroy, id: @productivity
    end

    assert_redirected_to productivities_path
  end
end
