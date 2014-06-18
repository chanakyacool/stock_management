ActiveAdmin.register Sizetype do
	form do |f|                       
		f.inputs "Size amd Types" do
			f.input :size, collection: Size.all.map{|s| [s.size, s.id]}
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
end
 