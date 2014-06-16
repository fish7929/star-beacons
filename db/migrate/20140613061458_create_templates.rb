class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :uuid
      t.string :start_date_top
      t.string :start_date_left
      t.string :start_date_width
      t.string :start_date_height
      t.string :end_date_top
      t.string :end_date_left
      t.string :end_date_width
      t.string :end_date_height
      t.string :coupon_top
      t.string :coupon_left
      t.string :coupon_width
      t.string :coupon_height
      t.string :date_font_size
      t.string :date_font_color
      t.string :coupon_font_size
      t.string :coupon_font_color
      t.string :template_type

      t.timestamps
    end
  end
end
