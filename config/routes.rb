Rails.application.routes.draw do
  get  "/signup",  to: "users#new"
  get  "/contact", to: "static_pages#contact"
  root "static_pages#home"
  resources :users
end
