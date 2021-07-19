Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resource :bodies, :medicals, :appointments
  get "/appointments", to: "appointments#index"
  get "/home", to: "home#index"
  get "/list", to: "home#list"
  root to: "home#index"
  get '/user' => "users#index", :as => :user_root
 
end
