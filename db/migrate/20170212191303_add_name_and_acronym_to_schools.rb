class AddNameAndAcronymToSchools < ActiveRecord::Migration[5.0]
  def change
    add_column :schools, :name, :string
    add_column :schools, :acronym, :string
  end
end
