class PagesController < ApplicationController

  before_action :check_if_owner, only: [:edit,:update, :destroy]

  def index

    @meals = current_user.meals.where(:date => Date.today)
    @activities = current_user.activities.where(:date => Date.today)

    # BMR=66.47+ (13.75 x W) + (5.0 x H) - (6.75 x A)

    # if var == 10
    #     print “Variable is 10″
    # elsif var == “20”
    #     print “Variable is 20″
    # else
    #     print “Variable is something else”
    # end

    calfactor = nil

    if current_user.lifestyle == "sedentary"
     calfactor = 1.0
     elsif current_user.lifestyle == "active"
      calfactor = 1.25
     else
     calfactor = 1.5
    end

    weightfactor = nil

    if current_user.weightgoal == "shed them lbs"
     weightfactor = 0.75
     elsif current_user.weightgoal == "as sexy as I can be"
       weightfactor = 1.00
     else
      weightfactor = 1.25
    end

    now = Time.now.utc.to_date
    age = now.year - current_user.birthday.year - (current_user.birthday.to_date.change(:year => now.year) > now ? 1 : 0)


    @benchmarkcals = (66.47 + (13.75*@current_user.weight/2.2) + (5*((@current_user.heightft*12 + @current_user.heightin)*2.54)) - (6.75 * age))*calfactor*weightfactor


  end






end


