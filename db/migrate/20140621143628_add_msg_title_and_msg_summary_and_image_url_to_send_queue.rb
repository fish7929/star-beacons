class AddMsgTitleAndMsgSummaryAndImageUrlToSendQueue < ActiveRecord::Migration
  def change
    add_column :send_queues, :msg_title, :string
    add_column :send_queues, :msg_summary, :string
    add_column :send_queues, :image_url, :string
  end
end
