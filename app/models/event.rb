class Event < ActiveRecord::Base
	has_many :users, through: :event_users
	has_many :event_users

	has_many :following_users, through: :event_followers, source: :user
	has_many :event_followers

	has_many :pictures
	mount_uploader :logo, AvatarUploader

end
