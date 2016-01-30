class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :events, through: :event_user
	has_many :assets
	has_many :assets, through: :snaps
	has_many :assets, through: :hearts
	has_many :assets, through: :comments
	has_many :events, through: :event_follower
	has_one :profile
end
