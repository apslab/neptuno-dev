class FunctionalUnit < ActiveRecord::Base
  belongs_to :owner, :class_name => "Owner", :foreign_key => "owner_id"
  belongs_to :consortium, :class_name => "Consortium", :foreign_key => "consortium_id"
end
