ActiveAdmin.register Supperplace do
  permit_params :name, :address, :website, :crusine, :phone, :state, :latitude, :longitude
  config.per_page = 20

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :website
    column :crusine
    column :phone
    column :state
    column :latitude
    column :longitude
    actions
  end

  filter :name
  filter :address
  filter :website
  filter :crusine
  filter :phone
  filter :state, as: :select, collection: Supperplace::STATE_SELECT
  filter :latitude
  filter :longitude

  form do |f|
    f.inputs "Supperplace Details" do
      f.input :name
      f.input :address
      f.input :website
      f.input :crusine
      f.input :phone
      f.input :state, as: :select, collection: Supperplace::STATE_SELECT
      f.input :latitude
      f.input :longitude
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
