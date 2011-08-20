# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


group_companies = ['PS','Prueba']
group_franchise = ['Mar del plata','Buenos Aires','Rosario']
group_administration = ['Administradora A','Administradora B','Administradora C','Administradora D']
group_consortium = ['Consorcio 1','Consorcio 2','Consorcio 3','Consorcio 4','Consorcio 5']
last_names  = ['Perez','Garcia','Fernandez','Hernandez','Suarez','Gonzalez','Gomez']
first_names = ['Pedro','Miguel','Mateo'    ,'Juan'     ,'Jose'  ,'Juan'    ,'Pablo']

group_companies.each do |compania|
  last_company = Company.create!(:name => compania,:cuit => '30123456780').id
  group_franchise.each do |franquicia|
    last_franchise = Franchise.create!(:name => franquicia,:company_id => last_company).id  
    group_administration.each do |administracion|
      Customer.create!(:name => 'Cliente ' + administracion,:address => 'legal address', :cuit => '33876543210')
      last_administration = Administration.create!(:name => administracion, :address => 'domicilio calle puerta',:franchise_id => last_franchise).id
      group_consortium.each do |consorcio|
        last_consortium = Consortium.create!(:name => consorcio, :address => 'calle XXXXX puerta 1234',:administration_id => last_administration).id
        piso = 1
        last_names.each do |last_name|
          dpto = 1
          first_names.each do |first_name|
             FunctionalUnit.create!(:location => 'piso ' + piso.to_s + 'dpto ' + dpto.to_s,
             :owner_id => Owner.create!(:last_name => last_name,:first_name => first_name).id,
             :consortium_id => last_consortium )
             dpto += 1
          end
          piso += 1 
        end
      end
    end
  end
end
=begin
Company.all.each do |company|
  (1..100).each do |i|
     Product.create!(:company_id => company.id,:name => "producto n"+i.to_s+company.name, :since => Date.today)
   end
end
=end