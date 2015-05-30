class ActivitiesController < ApplicationController
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
