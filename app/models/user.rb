class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
    
has_many :pictures, dependent: :destroy
has_many :votings, dependent: :destroy

validates :lastname, presence: true
validates :name, presence: true

end
