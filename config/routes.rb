Rails.application.routes.draw do
  resources :questions
  devise_for :users
  resources :posts do
  	resources :comments
  end

  root 'posts#index'

  get 'new_user/mentor' => 'mentors#new'
  get 'new_user/mentor' => 'founders#new'

  resources :mentors
end
