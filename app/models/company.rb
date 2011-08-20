class Company < ActiveRecord::Base
  has_many :franchises, :class_name => "Franchise"
end
