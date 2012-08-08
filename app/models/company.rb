class Company < ActiveRecord::Base
  attr_accessible :address, :description, :exp_id

  belongs_to :experience
end
