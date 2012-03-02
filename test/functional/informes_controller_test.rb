require 'test_helper'

class InformesControllerTest < ActionController::TestCase
  setup do
    @informe = informes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informe" do
    assert_difference('Informe.count') do
      post :create, informe: @informe.attributes
    end

    assert_redirected_to informe_path(assigns(:informe))
  end

  test "should show informe" do
    get :show, id: @informe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informe
    assert_response :success
  end

  test "should update informe" do
    put :update, id: @informe, informe: @informe.attributes
    assert_redirected_to informe_path(assigns(:informe))
  end

  test "should destroy informe" do
    assert_difference('Informe.count', -1) do
      delete :destroy, id: @informe
    end

    assert_redirected_to informes_path
  end
end
