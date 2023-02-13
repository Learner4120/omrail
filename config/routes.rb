Rails.application.routes.draw do
  resources :items
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do 
     get "signin" => 'devise/sessions#new'

     get "signout" => 'devise/sessions#destroy'
     get "signup" => 'devise/registrations#new' 
  end
  root 'home#index'
  get 'about' => 'home#about'
  get 'contact_us' => 'home#contact_us'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
