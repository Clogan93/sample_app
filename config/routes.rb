Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'pages/help'

  resources :users

  match '/signup',	:via => [:get], :to => 'users#new'

  match '/contact', :via => [:get], :to => 'pages#contact'
  match '/about', 	:via => [:get], :to => 'pages#about'
  match '/help', 	:via => [:get], :to => 'pages#help'

  root :via => [:get], :to => 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
