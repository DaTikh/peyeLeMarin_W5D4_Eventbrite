Rails.application.routes.draw do
  root "users#new"
  get "/user/new", to: "users#new", as: "new_user"
  post "/user/new", to: 'users#create', as: "create_user"
  get "/user/:id", to: 'users#show', as: "user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
