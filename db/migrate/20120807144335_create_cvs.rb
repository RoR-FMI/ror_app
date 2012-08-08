class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :about
      t.string :phone_number
      t.string :contact_email

      t.timestamps
    end
  end
end
