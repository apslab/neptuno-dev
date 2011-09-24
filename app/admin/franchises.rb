ActiveAdmin.register Franchise do
    index :as => :grid do |franchise|
      div do
        a :href => admin_franchise_path(franchise) do
          image_tag("franchises/" + franchise.image_file_name)
        end
      end
      a truncate(franchise.name), :href => admin_franchise_path(franchise)
    end  
end
