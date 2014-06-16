json.array!(@templates) do |template|
  json.extract! template, :id, :uuid, :start_date_top, :start_date_left, :start_date_width, :start_date_height, :end_date_top, :end_date_left, :end_date_width, :end_date_height, :coupon_top, :coupon_left, :coupon_width, :coupon_height, :date_font_size, :date_font_color, :coupon_font_size, :coupon_font_color, :template_type
  json.url template_url(template, format: :json)
end
