ActiveAdmin.register Supperplace do
  permit_params :name, :address, :website, :crusine, :phone, :state, :latitude, :longitude,
    photos_attributes: [:id, :name, :url, :supperplace_id, :_destroy],
      opening_hours_attributes: [:id, :day, :opening_time, :closing_time, :supperplace_id, :_destroy]
  config.per_page = 20

  action_item :index, only: :show do
    link_to 'Photos', admin_supperplace_photos_path(supperplace)
  end
  
  action_item :index, only: :show do
    link_to 'Opening Hours', admin_supperplace_opening_hours_path(supperplace)
  end

  index do
    selectable_column
    id_column
    column :name do |supperplace|
      link_to supperplace.name, admin_supperplace_path(supperplace)
    end
    column :address do |supperplace|
      link_to supperplace.address, "http://www.google.com/search?q=#{supperplace.address}"
    end
    column :website do |supperplace|
      link_to supperplace.website, "http://#{supperplace.website}"
    end
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
    f.semantic_errors *f.object.errors.keys
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
    f.inputs "Photos" do
      f.has_many :photos, heading: '', allow_destroy: true do |x|
        x.input :name
        x.input :url
      end
    end
    f.inputs "Opening Hours" do
      f.has_many :opening_hours, heading: '', new_record: 'Add New Opening Hour', allow_destroy: true do |x|
        x.input :day, as: :select, collection: OpeningHour::DAYS_SELECT
        x.input :opening_time
        x.input :closing_time
      end
    end
 
    f.actions
  end

end
