class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.date :start_time
      t.date :end_time
      t.string :job_title
      t.string :description

      t.timestamps
    end
  end
end
