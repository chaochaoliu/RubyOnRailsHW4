class UserInfo < ActiveRecord::Base
	belongs_to :user
	validates :firstname, presence: true
	validates :lastname, presence: true
  validates_format_of :firstname,:lastname, :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed"
end
