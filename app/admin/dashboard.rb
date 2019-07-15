ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Reclamos Recientes" do
          Complain.count
        end
      end
      column do
        panel "Empresas Recientes" do
          Company.count
        end
      end
      column do
        panel "Usuarios Recientes" do
          User.count
        end
      end
    end
  end # content
end
