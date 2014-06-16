require 'test_helper'

class SendQueuesControllerTest < ActionController::TestCase
  setup do
    @send_queue = send_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:send_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create send_queue" do
    assert_difference('SendQueue.count') do
      post :create, send_queue: { beacon_id: @send_queue.beacon_id, coupon: @send_queue.coupon, coupon_font_color: @send_queue.coupon_font_color, coupon_font_size: @send_queue.coupon_font_size, coupon_height: @send_queue.coupon_height, coupon_left: @send_queue.coupon_left, coupon_top: @send_queue.coupon_top, coupon_width: @send_queue.coupon_width, date_font_color: @send_queue.date_font_color, date_font_size: @send_queue.date_font_size, end_date: @send_queue.end_date, end_date_height: @send_queue.end_date_height, end_date_left: @send_queue.end_date_left, end_date_top: @send_queue.end_date_top, end_date_width: @send_queue.end_date_width, release_end_date: @send_queue.release_end_date, release_start_date: @send_queue.release_start_date, send_time: @send_queue.send_time, start_date: @send_queue.start_date, start_date_height: @send_queue.start_date_height, start_date_left: @send_queue.start_date_left, start_date_top: @send_queue.start_date_top, start_date_width: @send_queue.start_date_width, uuid: @send_queue.uuid }
    end

    assert_redirected_to send_queue_path(assigns(:send_queue))
  end

  test "should show send_queue" do
    get :show, id: @send_queue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @send_queue
    assert_response :success
  end

  test "should update send_queue" do
    patch :update, id: @send_queue, send_queue: { beacon_id: @send_queue.beacon_id, coupon: @send_queue.coupon, coupon_font_color: @send_queue.coupon_font_color, coupon_font_size: @send_queue.coupon_font_size, coupon_height: @send_queue.coupon_height, coupon_left: @send_queue.coupon_left, coupon_top: @send_queue.coupon_top, coupon_width: @send_queue.coupon_width, date_font_color: @send_queue.date_font_color, date_font_size: @send_queue.date_font_size, end_date: @send_queue.end_date, end_date_height: @send_queue.end_date_height, end_date_left: @send_queue.end_date_left, end_date_top: @send_queue.end_date_top, end_date_width: @send_queue.end_date_width, release_end_date: @send_queue.release_end_date, release_start_date: @send_queue.release_start_date, send_time: @send_queue.send_time, start_date: @send_queue.start_date, start_date_height: @send_queue.start_date_height, start_date_left: @send_queue.start_date_left, start_date_top: @send_queue.start_date_top, start_date_width: @send_queue.start_date_width, uuid: @send_queue.uuid }
    assert_redirected_to send_queue_path(assigns(:send_queue))
  end

  test "should destroy send_queue" do
    assert_difference('SendQueue.count', -1) do
      delete :destroy, id: @send_queue
    end

    assert_redirected_to send_queues_path
  end
end
