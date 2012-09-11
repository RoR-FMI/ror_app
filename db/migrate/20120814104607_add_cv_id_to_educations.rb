class AddCvIdToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :cv_id, :integer
  end
end
