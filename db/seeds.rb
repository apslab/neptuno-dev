# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

last_names  = ['Perez','Garcia','Fernandez','Hernandez','Suarez','Gonzalez','Gomez']
first_names = ['Pedro','Miguel','Mateo'    ,'Juan'     ,'Jose'  ,'Juan'    ,'Pablo']
piso = 1
last_names.each do |last_name|
  dpto = 1
  first_names.each do |first_name|
     Functional_unit.create!(:location => 'piso ' piso.to_s + 'dpto ' + dpto.to_s,
     :owner_id => Owner.create!(:last_name => last_name,:first_name => first_name).id )
     ++dpto
  end
  ++piso 
end

=begin
Company.all.each do |company|
  (1..100).each do |i|
     Product.create!(:company_id => company.id,:name => "producto n"+i.to_s+company.name, :since => Date.today)
   end
end
=end