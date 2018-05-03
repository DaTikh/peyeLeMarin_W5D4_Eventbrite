Rails.application.routes.draw do
  root "sessions#new"
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: 'sessions#new', as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :events
  put "/events", to: "events#subscribe", as: "subscribe"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
