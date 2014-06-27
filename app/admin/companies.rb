ActiveAdmin.register Company do
  	form do |f|                       
		f.inputs "Companies" do
			f.input :godown, collection: Godown.all.map{|g| [g.godown_place, g.id]}
			f.input :company_name
		end
		f.buttons
	end

	show do |size|
		attributes_table do
	        row :id
	       	row :company_name
		        row :godown do
		        	link_to(size.godown.godown_place, kickass_godown_path(size.godown.id))
		        end
	        row :created_at
	        row :updated_at 
	    end
	    active_admin_comments
	end

	# filter :company, collection: Company.all.map{|c| [c.company_name, c.id]}

	index do
		selectable_column
		column :id
		column :company_name 
		column "Godown Place" do |m|
			gd = Godown.find(m.godown.id).godown_place
			link_to gd, kickass_godown_path(m.godown)
		end
		actions 
	end
end
