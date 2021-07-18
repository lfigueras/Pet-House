Rails.application.routes.draw do
  devise_for :users
  resource :bodies
  get "/home", to: "home#index"
  get "/list", to: "home#list"
  root to: "home#index"
  get '/user' => "users#index", :as => :user_root
end
