require "securerandom"
class Archive < ActiveRecord::Base
	before_create :generate_uuid
  has_attached_file :image, :styles => { :larger => "480x800>", :medium => "320x533>", :thumb => "150x250>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  private
  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
