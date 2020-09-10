Rails.application.routes.draw do

  default_url_options :host => "localhost:3000"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'home#index'
  
  get 'home/dashboard'


  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
