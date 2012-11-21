require 'test_helper'

class Standing12sControllerTest < ActionController::TestCase
  setup do
    @standing12 = standing12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standing12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standing12" do
    assert_difference('Standing12.count') do
      post :create, standing12: {  }
    end

    assert_redirected_to standing12_path(assigns(:standing12))
  end

  test "should show standing12" do
    get :show, id: @standing12
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standing12
    assert_response :success
  end

  test "should update standing12" do
    put :update, id: @standing12, standing12: {  }
    assert_redirected_to standing12_path(assigns(:standing12))
  end

  test "should destroy standing12" do
    assert_difference('Standing12.count', -1) do
      delete :destroy, id: @standing12
    end

    assert_redirected_to standing12s_path
  end
end
