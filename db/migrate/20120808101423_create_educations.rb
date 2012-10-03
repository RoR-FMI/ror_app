class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.date :start_time
      t.date :end_time
      t.string :degree
      t.string :institution
      t.text :activities

      t.timestamps
    end
  end
end
