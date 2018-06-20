Rails.application.routes.draw do
  resources :slugs
  root 'slugs#index'
end