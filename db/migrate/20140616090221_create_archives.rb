class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :uuid
      t.string :start_date_top
      t.string :start_date_left
      t.string :start_date_width
      t.string :start_date_height
      t.date :start_date
      t.string :end_date_top
      t.string :end_date_left
      t.string :end_date_width
      t.string :end_date_height
      t.date :end_date
      t.string :coupon_top
      t.string :coupon_left
      t.string :coupon_width
      t.string :coupon_height
      t.integer :coupon
      t.string :date_font_size
      t.string :date_font_color
      t.string :coupon_font_size
      t.string :coupon_font_color
      t.date :release_start_date
      t.date :release_end_date
      t.timestamp :send_time
      t.string :beacon_id

      t.timestamps
    end
  end
end
