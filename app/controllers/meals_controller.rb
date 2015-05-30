class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
    @meal.category = params[:category]
    @meal.calportion = params[:calportion]
    @meal.numportions = params[:numportions]
    @meal.date = params[:date]
    @meal.name = params[:name]
    @meal.profile_id = params[:profile_id]

    if @meal.save
      redirect_to "/meals", :notice => "Meal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])

    @meal.category = params[:category]
    @meal.calportion = params[:calportion]
    @meal.numportions = params[:numportions]
    @meal.date = params[:date]
    @meal.name = params[:name]
    @meal.profile_id = params[:profile_id]

    if @meal.save
      redirect_to "/meals", :notice => "Meal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    @meal.destroy

    redirect_to "/meals", :notice => "Meal deleted."
  end
end
