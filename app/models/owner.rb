class Owner < ActiveRecord::Base
  has_many :functional_units, :class_name => "functional_unite"
  
  scope :with_cargo, where(:last_name => 'Gomez')
  scope :recent, where('updated_at >= ?', Time.now - 1.week)
  
  def name
    first_name + ' ' + last_name
  end
end
