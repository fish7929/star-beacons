class FixColumnName < ActiveRecord::Migration
  def change
		rename_column :patterns, :type, :pattern_type
  end
end
