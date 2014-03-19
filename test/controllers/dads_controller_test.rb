require 'test_helper'

class DadsControllerTest < ActionController::TestCase
  setup do
    @dad = dads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dad" do
    assert_difference('Dad.count') do
      post :create, dad: { description: @dad.description, image_url: @dad.image_url, tags: @dad.tags, title: @dad.title }
    end

    assert_redirected_to dad_path(assigns(:dad))
  end

  test "should show dad" do
    get :show, id: @dad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dad
    assert_response :success
  end

  test "should update dad" do
    patch :update, id: @dad, dad: { description: @dad.description, image_url: @dad.image_url, tags: @dad.tags, title: @dad.title }
    assert_redirected_to dad_path(assigns(:dad))
  end

  test "should destroy dad" do
    assert_difference('Dad.count', -1) do
      delete :destroy, id: @dad
    end

    assert_redirected_to dads_path
  end
end
