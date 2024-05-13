Rails.application.routes.draw do
  get '/authors', to: 'authors#index'
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
end
