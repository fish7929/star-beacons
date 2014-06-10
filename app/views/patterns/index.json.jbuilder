json.array!(@patterns) do |pattern|
  json.extract! pattern, :id, :uuid, :activities_start_date_top, :activities_start_date_left, :activities_start_date_width, :activities_start_date_height, :activities_end_date_top, :activities_end_date_left, :activities_end_date_width, :activities_end_date_height, :coupon_top, :coupon_left, :coupon_width, :coupon_height
  json.url pattern_url(pattern, format: :json)
end
