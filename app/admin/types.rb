ActiveAdmin.register Type do
	form do |f|                       
		f.inputs "Pipe Sizes" do
      f.input :godown_id,:input_html => {
                        :onchange => "  
                        var company = $(this).val();

                        $('#type_company_id').val(0).find('option').each(function(){
                        var $option = $(this),
                        isCorrectType = ($option.attr('data-user') === company);  

                        $option.prop('hidden',!isCorrectType);
                        });
                        $('#type_company_id').val(0).find('option').each(function(){
                          var $option = $(this),
                          isCorrectSize = ($option.attr('data-user')== company);
                          $option.prop('hidden', !isCorrectSize);
                          });
                        " 
                      }, :label => 'Godown Place', :as => :select, :collection => Godown.all.map{|u| ["#{u.godown_place}", u.id]}
      f.input :company, collection: Company.all.map{|c| [c.company_name, c.id,{"data-user" => c.godown_id}]}
			f.input :type_name
		end
		f.buttons
	end
	 show do |type|
      attributes_table do
        row :id
       	row :type_name
        row :godown_id do
            link_to(Godown.find(type.godown_id).godown_place, kickass_godown_path(type.godown_id))
          end
        row :company_name do
        	 link_to(type.company.company_name, kickass_company_path(type.company.id))
        end
        row :created_at
        row :updated_at 
      end
      active_admin_comments
    end
    index do	
    selectable_column
    column :id
    column :type_name
    column "Godown Location" do |g|
      gd = Godown.find(g.godown_id).godown_place
      link_to gd, kickass_godown_path(g.godown_id)
    end
    column "Company Name" do |m|
      cn = Company.find(m.company_id).company_name
      link_to cn, kickass_company_path(m.company)
    end
    
  actions 
  end
end
