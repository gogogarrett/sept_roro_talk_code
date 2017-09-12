class LessonsController < ApplicationController
  def show
    @lesson_id = params[:id].to_i
    @activity_id = params[:activity_id].to_i
  end
end
