require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe "Get #index" do
    it "reponses successfully with an HTTP 200 status code" do
      get :index, :school_id => 1
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "loads all the courses for under given school into @courses" do
      school1, school2 = School.create!, School.create!

      course1, course2, course3 =  school1.courses.create!, school1.courses.create, school2.courses.create
      get :index, :school_id => school1.id
      expect(assigns(:courses)).to match_array([course1, course2])

      get :index, :school_id => school2.id
      expect(assigns(:courses)).to match_array([course3])
    end
  end
end
