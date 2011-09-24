ActiveAdmin::Dashboards.build do

  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  section "Nuevas UF", :priority => 1 do
    ul do
      FunctionalUnit.order('created_at desc').limit(5).collect do |uf|
        li link_to(uf.owner.first_name + ' ' + uf.owner.last_name + ' ' + uf.created_at.to_s, admin_functional_unit_path(uf))
      end
    end
  end

  section "Nuevas Administradoras", :priority => 2 do
    ul do
      Administration.order('created_at desc').limit(5).collect do |ad|
        li link_to(ad.name + ' ' + ad.address + ' ' + ad.created_at.to_s, admin_owner_path(ad))
      end
    end
  end
  
  section "Facturacion mensual", :priority => 3 do
      #div do
      #  render('/admin/sidebar_links', :model => 'dashboards')
      #end

      div do
        br
        %{<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB" width="500" height="300" scrolling="no" frameborder="no"></iframe>}.html_safe
      end
    end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.
  
  #section "Nuevas UF", :priority => 1
  #section "Administradoras", :priority => 2
  
end
