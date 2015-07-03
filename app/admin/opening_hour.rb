ActiveAdmin.register OpeningHour do
  permit_params :day, :opening_time, :closing_time, :supperplace_id
  config.per_page = 20

  index do
    selectable_column
    id_column
    column :day
    column :opening_time
    column :closing_time
    column :supperplace
    #column "Supperplace Name" do |x|
    #  Supperplace.find(x.supperplace_id).address if x.supperplace_id != nil
    #end
    actions
  end

  filter :supperplace_id, label: 'Supperplace ID'
  filter :supperplace, label: 'Supperplace Name'

  form do |f|
    f.inputs "Opening Hours" do
      f.input :supperplace_id, as: :select, collection: Supperplace.all.collect {|s| [s.address, s.id]}
      f.input :day, as: :select, collection: OpeningHour::DAYS_SELECT
      f.input :opening_time, as: :time_select
      f.input :closing_time, as: :time_select
    end
  f.actions
  end
end
