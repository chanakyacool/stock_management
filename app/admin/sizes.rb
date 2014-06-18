ActiveAdmin.register Size do
	form do |f|                       
		f.inputs "Pipe Sizes" do
			f.input :company, collection: Company.all.map{|c| [c.company_name, c.id]}
			f.input :size
		end
		f.buttons
	end

	show do |size|
		attributes_table do
	        row :id
	       	row :size
		        row :company_name do
		        	link_to(size.company.company_name, kickass_company_path(size.company.id))
		        end
	        row :created_at
	        row :updated_at 
	    end
	    active_admin_comments
	end

	# filter :company

end
