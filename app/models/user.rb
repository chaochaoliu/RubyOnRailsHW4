class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
	has_one :user_info
	belongs_to :user_role
	has_many :posts
	validates :email, presence: true
  validates :email, presence: true
	validates :password, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: /\w+@\w+\.\w+/,
    message: "not valid email address" }

  def admin?
    self.user_role.name == 'admin'
  end
end
