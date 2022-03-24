Rails.application.routes.draw do
  root 'top#index'
  resources :spendings, only: %i(new create index edit update destroy)
  resources :tags, only: %i(new create index edit update destroy)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end