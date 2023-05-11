
ActiveAdmin.register Room do
  actions :index, :edit, :update, :create, :destroy, :new

  permit_params :roomtype_id, :roomnumber, :description, :status
end