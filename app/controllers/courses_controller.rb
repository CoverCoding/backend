class CoursesController < ApplicationController
  def index
    @courses = School.find(params[:school_id]).courses
    render json: @courses
  end
end
