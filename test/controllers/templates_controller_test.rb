require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { coupon_font_color: @template.coupon_font_color, coupon_font_size: @template.coupon_font_size, coupon_height: @template.coupon_height, coupon_left: @template.coupon_left, coupon_top: @template.coupon_top, coupon_width: @template.coupon_width, date_font_color: @template.date_font_color, date_font_size: @template.date_font_size, end_date_height: @template.end_date_height, end_date_left: @template.end_date_left, end_date_top: @template.end_date_top, end_date_width: @template.end_date_width, start_date_height: @template.start_date_height, start_date_left: @template.start_date_left, start_date_top: @template.start_date_top, start_date_width: @template.start_date_width, template_type: @template.template_type, uuid: @template.uuid }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    patch :update, id: @template, template: { coupon_font_color: @template.coupon_font_color, coupon_font_size: @template.coupon_font_size, coupon_height: @template.coupon_height, coupon_left: @template.coupon_left, coupon_top: @template.coupon_top, coupon_width: @template.coupon_width, date_font_color: @template.date_font_color, date_font_size: @template.date_font_size, end_date_height: @template.end_date_height, end_date_left: @template.end_date_left, end_date_top: @template.end_date_top, end_date_width: @template.end_date_width, start_date_height: @template.start_date_height, start_date_left: @template.start_date_left, start_date_top: @template.start_date_top, start_date_width: @template.start_date_width, template_type: @template.template_type, uuid: @template.uuid }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end
