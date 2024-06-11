Rails.application.routes.draw do
  resources :authors do
    resources :books
  end
  
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
end
