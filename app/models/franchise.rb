class Franchise < ActiveRecord::Base
  belongs_to :company, :class_name => "Company", :foreign_key => "company_id"
  has_many :administrations, :class_name => "Administration"
end
