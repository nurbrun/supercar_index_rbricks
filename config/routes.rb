SupercarIndexBricks::Application.routes.draw do
  root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "/contact", to: "pages#contact", as: "contact"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
  get "posts", to: "pages#posts", as: "posts"
  get "posts/:id", to: "pages#show_post", as: "post"
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
    get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
    resources :posts
  end

  resources :supercars 
  resources :makes
  resources :car_models
  resources :cities
  resources :countries

  get 'makes/tags/:tag', to: 'makes#index', as: :makes_tag
  get 'models/tags/:tag', to: 'car_models#index', as: :models_tag
  get 'cities/tags/:tag', to: 'cities#index', as: :cities_tag
  get 'countries/tags/:tag', to: 'countries#index', as: :countries_tag

end
