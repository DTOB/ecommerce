ActiveAdmin.register Customer do

  permit_params :first_name, :last_name, :address, :city, :country, :postal_code, :email, :province_id, :created_at, :updated_at
  
  index do
    column :id
    column :first_name
    column :last_name
    column :address
    column :city
    column :country
    column "Province" do |m|
      usr = Province.find(m.province_id).name
    end 
    column :postal_code
    column :email
    column :created_at
    column :updated_at
  end
    
  form do |f|
  f.semantic_errors # shows errors on :base
  f.inputs          # builds an input field for every attribute
  f.actions         # adds the 'Submit' and 'Cancel' buttons
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
