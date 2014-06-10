require 'test_helper'

class PatternsControllerTest < ActionController::TestCase
  setup do
    @pattern = patterns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patterns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pattern" do
    assert_difference('Pattern.count') do
      post :create, pattern: { activities_end_date_height: @pattern.activities_end_date_height, activities_end_date_left: @pattern.activities_end_date_left, activities_end_date_top: @pattern.activities_end_date_top, activities_end_date_width: @pattern.activities_end_date_width, activities_start_date_height: @pattern.activities_start_date_height, activities_start_date_left: @pattern.activities_start_date_left, activities_start_date_top: @pattern.activities_start_date_top, activities_start_date_width: @pattern.activities_start_date_width, coupon_height: @pattern.coupon_height, coupon_left: @pattern.coupon_left, coupon_top: @pattern.coupon_top, coupon_width: @pattern.coupon_width, uuid: @pattern.uuid }
    end

    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should show pattern" do
    get :show, id: @pattern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pattern
    assert_response :success
  end

  test "should update pattern" do
    patch :update, id: @pattern, pattern: { activities_end_date_height: @pattern.activities_end_date_height, activities_end_date_left: @pattern.activities_end_date_left, activities_end_date_top: @pattern.activities_end_date_top, activities_end_date_width: @pattern.activities_end_date_width, activities_start_date_height: @pattern.activities_start_date_height, activities_start_date_left: @pattern.activities_start_date_left, activities_start_date_top: @pattern.activities_start_date_top, activities_start_date_width: @pattern.activities_start_date_width, coupon_height: @pattern.coupon_height, coupon_left: @pattern.coupon_left, coupon_top: @pattern.coupon_top, coupon_width: @pattern.coupon_width, uuid: @pattern.uuid }
    assert_redirected_to pattern_path(assigns(:pattern))
  end

  test "should destroy pattern" do
    assert_difference('Pattern.count', -1) do
      delete :destroy, id: @pattern
    end

    assert_redirected_to patterns_path
  end
end
