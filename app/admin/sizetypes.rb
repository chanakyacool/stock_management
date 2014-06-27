ActiveAdmin.register Sizetype do   
	form do |f|                       
		f.inputs "Size and Types" do
			f.input :godown_id,:input_html => {
												:onchange => "  
												var godown = $(this).val();
												$('#sizetype_company_id , #sizetype_company_id, #sizetype_type_id, #sizetype_size_id').val(0).find('option').each(function(){
												var $option = $(this),
												isCorrectType = ($option.attr('data-user') === godown);
												$option.prop('hidden',!isCorrectType);
												});
											  "	
											}, :label => 'Godown Location', :as => :select, :collection => Godown.all.map{|u| ["#{u.godown_place}", u.id]}
			f.input :company, collection: Company.all.map{|c| [c.company_name, c.id, {"data-user" => c.godown_id}]}

			f.input :size, collection: Size.all.map{|s| [s.size, s.id, {"data-user" => s.godown_id}]  }
			f.input :type, collection: Type.all.map{|t| [t.type_name, t.id, {"data-user" => t.godown_id}]   }
		end
		f.buttons
	end
 
	show do |sizetype|
		attributes_table do
	        row :id 

	        row :godown_id do
	        	link_to(Godown.find(sizetype.godown_id).godown_place, kickass_godown_path(sizetype.godown_id))
	        end
	       	
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

		column "Godown Location" do |g|
			gd = Godown.find(g.godown_id).godown_place
			link_to gd, kickass_godown_path(g.godown_id)
		end
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
 