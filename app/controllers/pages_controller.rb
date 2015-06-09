class PagesController < ApplicationController

  before_action :check_if_owner, only: [:edit,:update, :destroy]

  def index

    @meals = current_user.meals.where(:date => Date.today)
    @activities = current_user.activities.where(:date => Date.today)

    # BMR=66.47+ (13.75 x W) + (5.0 x H) - (6.75 x A)

    # calfactor = nil

    # if current_user.lifestyle == "sedentary"
    #  calfactor = 0.75
    #  if current_user.lifestyle == "active"
    #   calfactor = 1.25
    #  else

    # end
    #  calfactor = 1.5
    # end

    now = Time.now.utc.to_date
    age = now.year - current_user.birthday.year - (current_user.birthday.to_date.change(:year => now.year) > now ? 1 : 0)


    @benchmarkcals = (66.47 + (13.75*current_user.weight/2.2) + (5*((current_user.heightft*12 + current_user.heightin)*2.54)) - (6.75 * age))


  end






end


