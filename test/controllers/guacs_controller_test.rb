require 'test_helper'

class GuacsControllerTest < ActionController::TestCase
  setup do
    @guac = guacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guac" do
    assert_difference('Guac.count') do
      post :create, guac: { avacado: @guac.avacado, cost: @guac.cost, date_created: @guac.date_created, mixins: @guac.mixins, name: @guac.name, time_put_in: @guac.time_put_in, time_to_make: @guac.time_to_make }
    end

    assert_redirected_to guac_path(assigns(:guac))
  end

  test "should show guac" do
    get :show, id: @guac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guac
    assert_response :success
  end

  test "should update guac" do
    patch :update, id: @guac, guac: { avacado: @guac.avacado, cost: @guac.cost, date_created: @guac.date_created, mixins: @guac.mixins, name: @guac.name, time_put_in: @guac.time_put_in, time_to_make: @guac.time_to_make }
    assert_redirected_to guac_path(assigns(:guac))
  end

  test "should destroy guac" do
    assert_difference('Guac.count', -1) do
      delete :destroy, id: @guac
    end

    assert_redirected_to guacs_path
  end
end
