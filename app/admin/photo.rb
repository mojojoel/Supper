ActiveAdmin.register Photo do
  permit_params :name, :url, :supperplace_id

  index do
    selectable_column
    id_column
    column :name
    column "URL", :url
    column :supperplace
    column "Supperplace Name" do |x|
      Supperplace.find(x.supperplace_id).address if x.supperplace_id != nil
    end
    actions
  end

  filter :supperplace_id
  filter :supperplace
  filter :name
  filter :url

  form do |f|
    f.inputs "Photo Details" do
      f.input :supperplace_id, as: :select, collection: Supperplace.all.collect {|s| [s.address, s.id]}
      f.input :name
      f.input :url
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
#   permitted << :other if resource.something?
#   permitted
# end


end
