json.array!(@send_queues) do |send_queue|
  json.extract! send_queue, :id, :uuid, :start_date_top, :start_date_left, :start_date_width, :start_date_height, :start_date, :end_date_top, :end_date_left, :end_date_width, :end_date_height, :end_date, :coupon_top, :coupon_left, :coupon_width, :coupon_height, :coupon, :date_font_size, :date_font_color, :coupon_font_size, :coupon_font_color, :release_start_date, :release_end_date, :send_time, :beacon_id, :msg_title, :msg_summary, :image_url
  json.url send_queue_url(send_queue, format: :json)
end
