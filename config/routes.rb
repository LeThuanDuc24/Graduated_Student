Rails.application.routes.draw do
  get    "/help",    to: "static_pages#help"
  get    "/about",   to: "static_pages#about"

  get    "/signup",  to: "users#new"
  post   "/signup",  to: "users#create"

  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  get    "/logout",  to: "sessions#destroy"

  get    "/statistic", to: "statistics#new"
  get    "/servey", to: "serveys#new"
  root "static_pages#home"

  resources :users
end
