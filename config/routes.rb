Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resource :bodies, :medicals, :appointments
  get "/appointments", to: "appointments#index"
  get "/home", to: "home#index"
  get "/list", to: "home#list"
  root to: "home#index"
  get '/user' => "users#index", :as => :user_root
  get 'contact', to: "application#contact"
  get 'services', to: "application#services"
end
