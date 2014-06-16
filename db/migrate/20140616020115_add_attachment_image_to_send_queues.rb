class AddAttachmentImageToSendQueues < ActiveRecord::Migration
  def self.up
    change_table :send_queues do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :send_queues, :image
  end
end
