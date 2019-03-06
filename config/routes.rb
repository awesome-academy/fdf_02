Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  root "static_pages#home"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  resources :users
=======
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 7e07993... Finish create model
=======
  root "static_pages#home"
>>>>>>> 97fb42b... Create Home Page
end
