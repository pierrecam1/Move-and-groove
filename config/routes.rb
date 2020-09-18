Rails.application.routes.draw do

  resources :challenges do
    resources :likes
  end

  resources :posts
  default_url_options :host => "localhost:3000"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'home#index'
  
  get 'home/dashboard'
  get 'home/my_sessions'
  get 'mychallenges', to: 'challenges#mychallenges'
  get 'users/index'





  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
