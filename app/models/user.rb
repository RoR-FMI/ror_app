class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  has_one :cv, :foreign_key => "user_id"
end
