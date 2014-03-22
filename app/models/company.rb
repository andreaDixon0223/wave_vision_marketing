class Company < ActiveRecord::Base
  attr_accessible :name, :address, :address2, :city, :st, :zip
end
