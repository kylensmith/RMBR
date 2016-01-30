class Asset < ActiveRecord::Base
	has_one :event
	has_many :comments
	has_one :user
	has_many :user, through: :snap
	has_many :user, through: :heart
	has_many :user, through: :comments
end
