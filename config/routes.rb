Rails.application.routes.draw do
  resources :questions
  # devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :posts do
  	resources :comments
  end

  root 'posts#index'

  get 'new_user/mentor' => 'mentors#new'
  get 'new_user/founder' => 'founders#new'

  resources :mentors
  resources :founders
end
