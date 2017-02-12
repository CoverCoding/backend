require 'rails_helper'

RSpec.describe SchoolsController, type: :controller do
  describe "Get #index" do
    it "responses successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "load all the schools into @schools" do
      school1, school2 = School.create!, School.create!
      get :index
      expect(assigns(:schools)).to match_array([school1, school2])
    end
  end
end
