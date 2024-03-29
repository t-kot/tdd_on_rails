class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :display_name, :email, :password, :password_confirmation, :remember_me
  has_many :tweets
end
