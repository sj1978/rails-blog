Rails.application.routes.draw do
  devise_for :users 

  resources :users do
    resources :posts  do
      resources :comments 
      resources :likes, only: [:create]
    end
  end
  
  

  root "users\#index"



end