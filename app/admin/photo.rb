ActiveAdmin.register Photo do
  belongs_to :supperplace
  permit_params :name, :url, :supperplace_id
  config.per_page = 20

  index do
    selectable_column
    id_column
    column :name
    column "URL", :url
    column :supperplace
    actions
  end

  filter :supperplace_id, label: 'Supperplace ID'
  filter :supperplace, label: 'Supperplace Name'
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
