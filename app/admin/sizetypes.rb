ActiveAdmin.register Sizetype do
	form do |f|                       
		f.inputs "Size and Types" do
			f.input :company, collection: Company.all.map { |c| [c.company_name, c.id]}
			f.input :size, collection: Size.all.map{|s| [s.size, s.id] if s.size?}
			f.input :type, collection: Type.all.map{|t| [t.type_name, t.id]}
		end
		f.buttons
	end
 
	show do |sizetype|
		attributes_table do
	        row :id 
	       	
	       	row :size do
	       		link_to(sizetype.size.size, kickass_size_path(sizetype.size.id))
	       	end
	       	
	       	row :type do
	       		link_to(sizetype.type.type_name, kickass_type_path(sizetype.type.id))	       	
	       	end
	       	 
	       	row :created_at
	       	row :updated_at
	    end
	    active_admin_comments
	end

	index do
		selectable_column
		column :id
		column "Size" do |m|
		  cn = Size.find(m.size_id).size
		  link_to cn, kickass_size_path(m.size)
		end 
		column "Type" do |m|
		  cn = Type.find(m.type_id).type_name
		  link_to cn, kickass_type_path(m.type)
		end 
		# column :type_id
		# column :company_id
		column "Company Name" do |m|
		  cn = Company.find(m.company_id).company_name
		  link_to cn, kickass_company_path(m.company)
		end 
		actions
	end
end
 