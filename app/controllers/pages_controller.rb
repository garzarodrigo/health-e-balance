class PagesController < ApplicationController

  before_action :check_if_owner, only: [:edit,:update, :destroy]

  def index

    @meals = current_user.meals
    @activities = current_user.activities


  end



end


