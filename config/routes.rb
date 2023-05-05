Rails.application.routes.draw do
  get 'bookings/index'
  devise_for :customers
  root "bookings#index"

 
  get 'bookings/bookings'

   resources :roomtypes
  
   resources :rooms do  resources :bookings
    end



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
