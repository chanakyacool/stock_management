ActiveAdmin.register Size do
	# form do |f|                       
	# 	f.inputs "Pipe Sizes" do
	# 		f.input :godown_id,:input_html => {
	# 											:onchange => "  
	# 											var company = $(this).val();

	# 											$('#size_company_id').val(0).find('option').each(function(){
	# 											var $option = $(this),
	# 											isCorrectType = ($option.attr('data-user') === company);  

	# 											$option.prop('hidden',!isCorrectType);
	# 											});
	# 											$('#size_company_id').val(0).find('option').each(function(){
	# 												var $option = $(this),
	# 												isCorrectSize = ($option.attr('data-user')== company);
	# 												$option.prop('hidden', !isCorrectSize);
	# 												});
	# 										  "	
	# 										}, :label => 'Godown Place', :as => :select, :collection => Godown.all.map{|u| ["#{u.godown_place}", u.id]}
	# 		f.input :company, collection: Company.all.map{|c| [c.company_name, c.id,{"data-user" => c.godown_id}]}
	# 		f.input :size
	# 	end
	# 	f.buttons
	# end

	# show do |size|
	# 	attributes_table do
	#         row :id
	#        	row :size
	# 	        row :company_name do
	# 	        	link_to(size.company.company_name, kickass_company_path(size.company.id))
	# 	        end
	#         row :created_at
	#         row :updated_at 
	#     end
	#     active_admin_comments
	# end

	# filter :company, collection: Company.all.map{|c| [c.company_name, c.id]}

	# index do
	# 	selectable_column
	# 	column :id
	# 	column :size
	# 	# column :type_id
	# 	# column :company_id
	# 	column "Company Name" do |m|
	# 	  cn = Company.find(m.company_id).company_name
	# 	  link_to cn, kickass_company_path(m.company)
	# 	end
		
	# actions 
	# end

end
