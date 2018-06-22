Rails.application.routes.draw do

  get "/properties/showall" => "properties#showall"

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_for :admins
  devise_for :users, controllers: {
     registrations: 'users/registrations'
   }

  root "properties#welcome"
  
  resources :properties do 
  resources :comments
end
  resources :rents
  resources :claims
  resources :homes, only: [:show]


  # post assign: "rents#assign"

post "assign" => "rents#assign"

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
