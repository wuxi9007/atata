require 'test_helper'

class AccDataControllerTest < ActionController::TestCase
  setup do
    @acc_datum = acc_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acc_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acc_datum" do
    assert_difference('AccDatum.count') do
      post :create, acc_datum: { android_id: @acc_datum.android_id, note: @acc_datum.note, time_stamp: @acc_datum.time_stamp, x: @acc_datum.x, y: @acc_datum.y, z: @acc_datum.z }
    end

    assert_redirected_to acc_datum_path(assigns(:acc_datum))
  end

  test "should show acc_datum" do
    get :show, id: @acc_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acc_datum
    assert_response :success
  end

  test "should update acc_datum" do
    patch :update, id: @acc_datum, acc_datum: { android_id: @acc_datum.android_id, note: @acc_datum.note, time_stamp: @acc_datum.time_stamp, x: @acc_datum.x, y: @acc_datum.y, z: @acc_datum.z }
    assert_redirected_to acc_datum_path(assigns(:acc_datum))
  end

  test "should destroy acc_datum" do
    assert_difference('AccDatum.count', -1) do
      delete :destroy, id: @acc_datum
    end

    assert_redirected_to acc_data_path
  end
end
