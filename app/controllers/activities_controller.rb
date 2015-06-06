class ActivitiesController < ApplicationController

  before_action :check_if_owner, only: [:edit,:update, :destroy]

  def check_if_owner
    activity = Activity.find(params[:id])
    if activity.profile_id != current_user.id
      redirect_to "/activities", notice: "Sorry! That's not yours, so you can't delete it."
      end
  end

  def index
    @activities = Activity.all

  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new
    @activity.date = params[:date]
    @activity.category = params[:category]
    @activity.name = params[:name]
    @activity.lengthhrs = params[:lengthhrs]
    @activity.lengthmins = params[:lengthmins]
    @activity.calburned = params[:calburned]
    @activity.intensity = params[:intensity]
    @activity.profile_id = params[:profile_id]

    if @activity.save
      redirect_to "/activities", :notice => "Activity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    @activity.date = params[:date]
    @activity.category = params[:category]
    @activity.name = params[:name]
    @activity.lengthhrs = params[:lengthhrs]
    @activity.lengthmins = params[:lengthmins]
    @activity.calburned = params[:calburned]
    @activity.intensity = params[:intensity]
    @activity.profile_id = params[:profile_id]

    if @activity.save
      redirect_to "/activities", :notice => "Activity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    @activity.destroy

    redirect_to "/activities", :notice => "Activity deleted."
  end
end
