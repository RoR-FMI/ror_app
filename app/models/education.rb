class Education < ActiveRecord::Base
  attr_accessible :activities, :degree, :end_time, :institution, :start_time, :cv_id

  belongs_to :cv
end
