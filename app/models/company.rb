class Company < ActiveRecord::Base
  attr_accessible :address, :description

  belongs_to :experience
end
