class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :activities, :class_name => "Activity", :foreign_key => "profile_id"
  has_many :meals, :class_name => "Meal", :foreign_key => "profile_id"
end
