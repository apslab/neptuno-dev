class Consortium < ActiveRecord::Base
  belongs_to :administration, :class_name => "Administration", :foreign_key => "administration_id"
  has_many :functional_units, :class_name => "functional_unit"
end
