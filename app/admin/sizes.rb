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

	filter :company, collection: Company.all.map{|c| [c.company_name, c.id]}

	index do
		selectable_column
		column :id
		column :size
		# column :type_id
		# column :company_id
		column "Company Name" do |m|
		  cn = Company.find(m.company_id).company_name
		  link_to cn, kickass_company_path(m.company)
		end
		
	actions 
	end

end
