class AddCvIdToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :cv_id, :integer
  end
end
