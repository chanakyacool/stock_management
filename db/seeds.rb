# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# cg = Godown.find(2).companies.collect(&:id)

# for s in 153..160
# for t in 115..120
# Sizetype.create(:godown_id => '5', :company_id => '20', :size_id => s, :type_id => t)
# end	
# end	

# for i in 1..(Activity.all.count)
# Activity.create(:owner_id => "2", :owner_type => "AdminUser")
# end
# for c in 13..16
# for t in 73..96
# for s in 97..128
# Sizetype.create(:size_id => s, :type_id => t, :company_id => c, :godown_id => "4")
# end
# end
# end

# for c in 17..20
# for t in 97..120
# for s in 129..160
# Sizetype.create(:size_id => s, :type_id => t, :company_id => c, :godown_id => "5")
# end
# end
# end

# for g in 2..5
#  Company.create([{company_name: 'Tata', godown_id:  g}, {company_name: 'Jindal', godown_id:  g}, {company_name: 'Oswal', godown_id:  g},{company_name: 'Asian', godown_id:  g}])
# end







# AdminUser.create([{email: 'satish@salasarindia.com', password: 'password'}, {email: 'raju@salasarindia.com', password: 'password'}, {email: 'kabra@mj.com', password: 'password'}])
# Godown.create([{godown_place: 'Bansilalpet'}, {godown_place: 'Boiguda'}, {godown_place: 'Dullapally'}, {godown_place: 'Kompally'}, {godown_place: 'Mekalmandi'}])
 # Company.create([{company_name: 'Tata', godown_id:  "1"}, {company_name: 'Jindal', godown_id:  "1"}, {company_name: 'Oswal', godown_id:  "1"},{company_name: 'Asian', godown_id:  "1"}])

# for b in 1..(Godown.all).count
#  for a in 1..(Company.all).count
# 	Size.create([{size: '15mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '20mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '25mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '32mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '40mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '50mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '65mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '80mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '100mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '125mm', company_id: a, godown_id: b}])
# 	Size.create([{size: '150mm', company_id: a, godown_id: b}])
#  end
# end
# for i in 1..4
# for b in 1..(Godown.all).count
#  for a in 1..(Company.all).count

# 	Type.create([{type_name: 'GIA', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'GIB', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'GIC', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'MSA', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'MSB', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'MSC', company_id: a, godown_id: b}])
# 	Type.create([{type_name: 'Seamless', company_id: a, godown_id: b}])
# 	 end
# end 
# end

# Size Types Join

# for i in 1..11
# 	for j in 1..7
# 		for k in 1..4
# 			Sizetype.create(:size_id => i, :type_id => j, :company_id => k)
# 		end
# 	end
# end

 # Activity.find_all_by_id(550..885).each do |h|
 # 	puts "now #{h.id}"
 # 	h.update_attributes(:owner_id => (1..4).to_a.sample, :owner_type => "AdminUser")
 # end
# for i in 1..(Godown.all.count)
# 	['Tata', 'Jindal', 'Oswal', 'Asian'].each do |c|
# 		Company.create([{godown_id: i, company_name: c}])
# 	end
# end
# Activity.find_all_by_id(6..25).each do |a|
# 	puts "now #{a.id}"
# 	a.update_attributes(:owner_id => "2", :owner_type => "AdminUser")
# end
 # for dg in 2..5
 # 	for c in 17..20
	# 	["10MM","20MM","30MM", "40MM", "45MM", "90MM", "100MM", "150MM"].each do |s|
	# 		Size.create(:size => s, :company_id => c , :godown_id => "5")
	# 	end
	# 	["GIA", "GIB", "GIC", "MSA", "MSB", "MSC"].each do |t|
	# 		Type.create(:type_name => t, :company_id => c, :godown_id => "5")
	# 	end

	# end
 # end
 
 
# for c in (1..4)
	# for s in 1..9
	# 	for t in 1..6
	# 		Sizetype.create(:size_id => s, :type_id => t, :company_id => "1", :godown_id => "1")
	# 	end
	# end
# end
# for t in 1..6
# for s in 1..9
# Sizetype.create(:size_id => s, :type_id => t, :company_id => "1", :godown_id => "1")
# end
# end
# for c in 2..4
# for t in 1..6
# for s in 1..9
# Sizetype.delete(:size_id => s, :type_id => t, :company_id => c, :godown_id => "1")
# end
# end
# end









	# <a href="#" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="<%= Sizetype.find_all_by_company_id(c.id).count%> in stock">