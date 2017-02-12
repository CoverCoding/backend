class AddTitleCourseNumberYearTermAndInstructorToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :title, :string
    add_column :courses, :course_number, :string
    add_column :courses, :year, :integer
    add_column :courses, :term, :string
    add_column :courses, :instructor, :string
  end
end
