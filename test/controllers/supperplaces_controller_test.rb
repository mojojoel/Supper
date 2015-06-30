require 'test_helper'

class SupperplacesControllerTest < ActionController::TestCase
  setup do
    @supperplace = supperplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supperplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supperplace" do
    assert_difference('Supperplace.count') do
      post :create, supperplace: { address: @supperplace.address, close: @supperplace.close, crusine: @supperplace.crusine, open: @supperplace.open, phone: @supperplace.phone, state: @supperplace.state, website: @supperplace.website }
    end

    assert_redirected_to supperplace_path(assigns(:supperplace))
  end

  test "should show supperplace" do
    get :show, id: @supperplace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supperplace
    assert_response :success
  end

  test "should update supperplace" do
    patch :update, id: @supperplace, supperplace: { address: @supperplace.address, close: @supperplace.close, crusine: @supperplace.crusine, open: @supperplace.open, phone: @supperplace.phone, state: @supperplace.state, website: @supperplace.website }
    assert_redirected_to supperplace_path(assigns(:supperplace))
  end

  test "should destroy supperplace" do
    assert_difference('Supperplace.count', -1) do
      delete :destroy, id: @supperplace
    end

    assert_redirected_to supperplaces_path
  end
end
