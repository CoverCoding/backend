require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe "Get #index" do
    it "reponses successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all the courses into @courses" do
      course1, course2 = Course.create!, Course.create!
      get :index
      expect(assigns(:courses)).to match_array([course1, course2])
    end
  end
end
