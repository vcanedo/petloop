Rails.application.routes.draw do
  resources :collars, only: %i[show]
  root to: "collars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
