class Activity < ActiveRecord::Base

belongs_to :profile , :class_name => "User", :foreign_key => "profile_id"

end
