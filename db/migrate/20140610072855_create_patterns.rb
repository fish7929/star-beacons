class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :uuid
      t.integer :activities_start_date_top
      t.integer :activities_start_date_left
      t.integer :activities_start_date_width
      t.integer :activities_start_date_height
      t.integer :activities_end_date_top
      t.integer :activities_end_date_left
      t.integer :activities_end_date_width
      t.integer :activities_end_date_height
      t.integer :coupon_top
      t.integer :coupon_left
      t.integer :coupon_width
      t.integer :coupon_height

      t.timestamps
    end
  end
end
