require "securerandom"

class Pattern < ActiveRecord::Base
  before_create :generate_uuid
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  private
  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
