ActiveAdmin.register_page "Dashboard" do
    menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }
    content :title => proc{ I18n.t("active_admin.dashboard") } do
        columns do
            column do
                panel "Admin Users" do
                    ul do
                        AdminUser.all.map do |user|
                            li link_to(user.email, kickass_admin_user_path(user))
                        end
                    end
                end
            end
            column do
                panel "Godowns" do
                    ul do
                        Godown.all.map do |godown|
                            li link_to(godown.godown_place, kickass_godown_path(godown))
                        end
                    end
                end
            end
            column do
                panel "Comapnies" do
                    ul do
                        Company.all.map do |company|
                            li link_to(company.company_name, kickass_company_path(company))
                        end
                    end
                end
            end
            column do
                panel "Sizes" do
                    ul do
                        Size.all.map(&:size).sort.uniq.each do |size|
                            li link_to(size, kickass_sizes_path)
                        end
                    end
                end
            end
            column do
                panel "Types" do
                    ul do
                        Type.all.map(&:type_name).sort.uniq.each  do |type|
                            li link_to(type, kickass_types_path)
                        end
                    end
                end
            end
        end
    end
end
