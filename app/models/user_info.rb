class UserInfo < ActiveRecord::Base
	belongs_to :user
	validates :firstname, presence: true
	validates :lastname, presence: true
end
