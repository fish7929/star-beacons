class AddTypeToPattern < ActiveRecord::Migration
  def change
    add_column :patterns, :type, :string
  end
end
