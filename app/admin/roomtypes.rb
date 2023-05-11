
ActiveAdmin.register Roomtype do
  actions :index, :edit, :update, :create, :destroy, :new

  permit_params :roomtype, :description, :cost, :status
end