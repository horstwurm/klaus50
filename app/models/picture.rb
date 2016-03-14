class Picture < ActiveRecord::Base

belongs_to :user
has_many :votings, dependent: :destroy

validates :user_id, presence: true
validates :comment, presence: true

has_attached_file :image, default_url: "/images/:style/missing.png", :styles => {:big => "1080x1080", :medium => "300x300", :thumb => "100x100", :small => "50x50" }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
