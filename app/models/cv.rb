class Cv < ActiveRecord::Base
  attr_accessible :about, :contact_email, :phone_number, :user_id

  has_many :experiences, :foreign_key => "cv_id"
  has_many :educations,  :foreign_key => "cv_id"

  belongs_to :user
end
