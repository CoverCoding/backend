class ApplicationController < ActionController::API
  def index
    @schools = School.all
    render json: @schools
  end
end
