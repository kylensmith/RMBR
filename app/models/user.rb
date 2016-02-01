class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :events, through: :event_users
    has_many :event_users
	has_many :assets
	has_many :assets, through: :snaps
	has_many :assets, through: :flashes
	has_many :assets, through: :comments
	has_many :comments
	has_many :followed_events, through: :event_followers, source: :event
	has_many :event_followers
	has_one :profile
end
