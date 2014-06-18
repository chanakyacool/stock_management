ActiveAdmin.register Type do
	form do |f|                       
		f.inputs "Pipe Sizes" do
			f.input :company, collection: Company.all.map{|c| [c.company_name, c.id]}
			f.input :type_name
		end
		f.buttons
	end
	 show do |type|
      attributes_table do
        row :id
       	row :type_name
        row :company_name do
        	 link_to(type.company.company_name, kickass_company_path(type.company.id))
        end
        row :created_at
        row :updated_at 
      end
      active_admin_comments
    end
end
