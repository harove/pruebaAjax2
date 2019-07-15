ActiveAdmin.register Complain do
    belongs_to :company
    permit_params [:content,:user_id]


    form do |f|
        f.inputs do
            f.input :content
            f.input :user, as: :select, collection: User.all.pluck(:email,:id), :input_html => { :class => 'chzn-select', :width => 'auto', "data-placeholder" => 'Click' }
            #f.input :sub_category, as: :select, collection: SubCategory.all, :input_html => { :class => 'chzn-select', :width => 'auto', "data-placeholder" => 'Click' }
            #f.input :company, as: :select, collection: Company.all.pluck(:name,:id), :input_html => { :class => 'chzn-select', :width => 'auto', "data-placeholder" => 'Click' }
        end
        f.actions
    end



# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
