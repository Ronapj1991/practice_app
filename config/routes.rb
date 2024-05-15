Rails.application.routes.draw do
  resources :authors
  
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
end
