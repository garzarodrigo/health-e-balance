class Meal < ActiveRecord::Base

  belongs_to :profile , :class_name => "User", :foreign_key => "profile_id"


  def total_calories
    return self.calportion * self.numportions
  end
end
