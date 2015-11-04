class User < ActiveRecord::Base
	has_one :user_info
	belongs_to :user_role
	has_many :posts
	validates :email, presence: true
	validates :password, presence: true
end
