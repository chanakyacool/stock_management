ActiveAdmin.register Sizetype do   
	form do |f|                       
		f.inputs "Size and Types" do
			f.input :company,:input_html => {
												:onchange => "  
												var company = $(this).val();

												$('#sizetype_size_input').val(0).find('option').each(function(){
												var $option = $(this),
												isCorrectType = ($option.attr('data-user') === company);  

												$option.prop('disabled',!isCorrectType);
												});
											  "
											}, collection: Company.all.map{|t| [t.company_name, t.id]}

			f.input :size, collection: Size.all.map{|s| [s.size, s.id, {"data-user" => s.company_id}]  }
			# :input_html => {  	
			# 									:onchange => "  var user = $(this).val();
			# 									$('#sizetype_type_id').val(0).find('option').each(function(){
			# 									var $option = $(this),
			# 									isCorrectUser = ($option.attr('data-user') === user);  

			# 									$option.prop('disabled',!isCorrectUser);
			# 									});
			# 								  "
			# 								}, collection: Size.all.map{|s| [s.size, s.id, {"data-user" => s.company_id}]  }
			f.input :type, collection: Type.all.map{|s| [s.type_name, s.id]   }
			# f.input :type, collection: Type.all.map{|s| [s.type_name, s.id, {"data-user" => s.sizes}]   }
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
		column "Company Name" do |m|
		  cn = Company.find(m.company_id).company_name
		  link_to cn, kickass_company_path(m.company)
		end 
		column "Type" do |m|
		  cn = Type.find(m.type_id).type_name
		  link_to cn, kickass_type_path(m.type)
		end 
		column "Size" do |m|
		  cn = Size.find(m.size_id).size
		  link_to cn, kickass_size_path(m.size)
		end 
		# column :type_id
		# column :company_id
		actions
	end
end
 