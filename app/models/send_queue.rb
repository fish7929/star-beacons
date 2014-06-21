require "securerandom"
class SendQueue < ActiveRecord::Base
	before_create :generate_uuid
	has_attached_file :image, :styles => { :larger => "480x800>", :medium => "320x533>", :thumb => "150x250>", :mini => "100x166>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
=begin
	def self.addSendTime(beacon_id, send_time)
		where("beacon_id = ?", beacon_id).each do |send_queue|
			send_queue.update(:send_time => send_time)
		end
	end
=end
	private
	def generate_uuid
	  self.uuid = SecureRandom.uuid
	end
end
