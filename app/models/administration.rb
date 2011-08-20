class Administration < ActiveRecord::Base
  belongs_to :franchise, :class_name => "Franchise", :foreign_key => "franchise_id"
end
