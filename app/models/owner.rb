class Owner < ActiveRecord::Base
  has_many :functional_units, :class_name => "functional_unite"
  
  def name
    first_name + last_name
  end
end
