Rails.application.routes.draw do


  devise_for :admins
  devise_for :users
  root "properties#welcome"
  resources :properties do 
  	member do 
  		put "like", to: "properties#upvote"
  	end
  end
  resources :rents
  resources :claims

  # post assign: "rents#assign"

post "assign" => "rents#assign"

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
