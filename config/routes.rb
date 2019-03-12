Rails.application.routes.draw do
  root "static_pages#home"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  resources :users
  get "static_pages/home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  root "static_pages#home"
end
