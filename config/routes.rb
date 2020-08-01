Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users do 
  	member do 
     get 'add_roles'
   end
   collection do
    post 'update_roles'
  end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
