class Administration < ActiveRecord::Base
  belongs_to :franchise, :class_name => "Franchise", :foreign_key => "franchise_id"
  has_many :consortia, :class_name => "Consortium"
end
