RailsGnux::Application.routes.draw do
  resources :words

  resources :users do

    member do
      get :following
      get :followers
    end


  end

  resources :sessions
  resources :microposts
  resources :relationships
  
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/contact' => 'pages#contact', :as => :contact
  match '/about' => 'pages#about', :as => :about
  match '/' => 'pages#home', :as => :root
  match '/signup' => 'users#new', :as => :signup
 # match '/' => 'pages#home'
  match '/:controller(/:action(/:id))'
end
