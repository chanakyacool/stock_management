ActiveAdmin.register Sizetype do   
	form do |f|                       
		f.inputs "Size and Types" do
			f.input :godown_id,:input_html => {
												:onchange => "  
												var company = $(this).val();

												$('#sizetype_company_id').val(0).find('option').each(function(){
												var $option = $(this),
												isCorrectType = ($option.attr('data-user') === company);  

												$option.prop('hidden',!isCorrectType);
												});
												$('#size_company_id').val(0).find('option').each(function(){
													var $option = $(this),
													isCorrectSize = ($option.attr('data-user')== company);
													$option.prop('hidden', !isCorrectSize);
													});
											  "	
											}, :label => 'Godown Place', :as => :select, :collection => Godown.all.map{|u| ["#{u.godown_place}", u.id]}
			f.input :company,:input_html => {
												:onchange => "  
												var company = $(this).val();

												$('#sizetype_size_id').val(0).find('option').each(function(){
												var $option = $(this),
												isCorrectType = ($option.attr('data-user') === company);  

												$option.prop('hidden',!isCorrectType);
												});
												$('#sizetype_type_id').val(0).find('option').each(function(){
													var $option = $(this),
													isCorrectSize = ($option.attr('data-user')== company);
													$option.prop('hidden', !isCorrectSize);
													});
											  "	
											}, collection: Company.all.map{|t| [t.company_name, t.id, {"data-user" => t.godown_id}]}

			f.input :size, collection: Size.all.map{|s| [s.size, s.id, {"data-user" => s.company_id}]  }
			f.input :type, collection: Type.all.map{|s| [s.type_name, s.id, {"data-user" => s.company_id}]   }
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

	         row :company do
		        	link_to(sizetype.company.company_name, kickass_company_path(sizetype.company.id))
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
 