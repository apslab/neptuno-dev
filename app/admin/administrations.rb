ActiveAdmin.register Administration do

  index do
      column("ID", :sortable => :id) {|administration| link_to "##{administration.id} ", admin_administration_path(administration) }
      column( :name ,:sortable => :true)
      column( :address, :sortable => true) 
      default_actions
  end  
end
