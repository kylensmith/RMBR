class Event < ActiveRecord::Base
	belongs_to :user
	belongs_to :user
	has_many :assets

end
