require 'test_helper'

class ArchivesControllerTest < ActionController::TestCase
  setup do
    @archive = archives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archive" do
    assert_difference('Archive.count') do
      post :create, archive: { beacon_id: @archive.beacon_id, coupon: @archive.coupon, coupon_font_color: @archive.coupon_font_color, coupon_font_size: @archive.coupon_font_size, coupon_height: @archive.coupon_height, coupon_left: @archive.coupon_left, coupon_top: @archive.coupon_top, coupon_width: @archive.coupon_width, date_font_color: @archive.date_font_color, date_font_size: @archive.date_font_size, end_date: @archive.end_date, end_date_height: @archive.end_date_height, end_date_left: @archive.end_date_left, end_date_top: @archive.end_date_top, end_date_width: @archive.end_date_width, release_end_date: @archive.release_end_date, release_start_date: @archive.release_start_date, send_time: @archive.send_time, start_date: @archive.start_date, start_date_height: @archive.start_date_height, start_date_left: @archive.start_date_left, start_date_top: @archive.start_date_top, start_date_width: @archive.start_date_width, uuid: @archive.uuid }
    end

    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should show archive" do
    get :show, id: @archive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archive
    assert_response :success
  end

  test "should update archive" do
    patch :update, id: @archive, archive: { beacon_id: @archive.beacon_id, coupon: @archive.coupon, coupon_font_color: @archive.coupon_font_color, coupon_font_size: @archive.coupon_font_size, coupon_height: @archive.coupon_height, coupon_left: @archive.coupon_left, coupon_top: @archive.coupon_top, coupon_width: @archive.coupon_width, date_font_color: @archive.date_font_color, date_font_size: @archive.date_font_size, end_date: @archive.end_date, end_date_height: @archive.end_date_height, end_date_left: @archive.end_date_left, end_date_top: @archive.end_date_top, end_date_width: @archive.end_date_width, release_end_date: @archive.release_end_date, release_start_date: @archive.release_start_date, send_time: @archive.send_time, start_date: @archive.start_date, start_date_height: @archive.start_date_height, start_date_left: @archive.start_date_left, start_date_top: @archive.start_date_top, start_date_width: @archive.start_date_width, uuid: @archive.uuid }
    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should destroy archive" do
    assert_difference('Archive.count', -1) do
      delete :destroy, id: @archive
    end

    assert_redirected_to archives_path
  end
end
