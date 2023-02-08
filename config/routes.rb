Rails.application.routes.draw do
  root 'home#index'
  get 'about' => 'home#about'
  get 'contact_us' => 'home#contact_us'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
