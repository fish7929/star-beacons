class AddAttachmentImageToTemplates < ActiveRecord::Migration
  def self.up
    change_table :templates do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :templates, :image
  end
end
