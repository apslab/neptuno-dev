ActiveAdmin.register Consortium do
  
  index do
      column("ID", :sortable => :id) {|consortium| link_to "##{consortium.id} ", admin_consortium_path(consortium) }
      column( :name ,:sortable => :true)
      column( :address, :sortable => true) 
      default_actions
  end
  
  
end
