require 'test_helper'

class ConveniosControllerTest < ActionController::TestCase
  setup do
    @convenio = convenios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convenios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convenio" do
    assert_difference('Convenio.count') do
      post :create, :convenio => @convenio.attributes
    end

    assert_redirected_to convenio_path(assigns(:convenio))
  end

  test "should show convenio" do
    get :show, :id => @convenio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @convenio.to_param
    assert_response :success
  end

  test "should update convenio" do
    put :update, :id => @convenio.to_param, :convenio => @convenio.attributes
    assert_redirected_to convenio_path(assigns(:convenio))
  end

  test "should destroy convenio" do
    assert_difference('Convenio.count', -1) do
      delete :destroy, :id => @convenio.to_param
    end

    assert_redirected_to convenios_path
  end
end
