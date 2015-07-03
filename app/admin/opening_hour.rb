ActiveAdmin.register OpeningHour do
  permit_params :day, :opening_time, :closing_time, :supperplace_id

  index do
    selectable_column
    id_column
    column :day
    column :opening_time
    column :closing_time
    column :supperplace
    column "Supperplace Name" do |x|
      Supperplace.find(x.supperplace_id).address if x.supperplace_id != nil
    end
  end

  filter :supperplace_id
  filter :supperplace

  form do |f|
    f.inputs "Opening Hours" do
      f.input :supperplace_id, as: :select, collection: Supperplace.all.collect {|s| [s.address, s.id]}
      f.input :day, as: :radio, collection: OpeningHour::DAYS_SELECT
      f.input :opening_time, as: :time_picker, ignore_date: :true
      f.input :closing_time, as: :time_picker, ignore_date: :true
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
