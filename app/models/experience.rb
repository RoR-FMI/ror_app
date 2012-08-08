class Experience < ActiveRecord::Base
  attr_accessible :description, :end_time, :job_title, :start_time, :cv_id

  has_one :company, :foreign_key => "exp_id"
  belongs_to :cv
end
