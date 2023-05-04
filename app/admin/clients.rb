
ActiveAdmin.register Client do
  actions :index, :edit, :update, :create, :destroy, :new

  permit_params :name, :address, :company, :phone_number
end