Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users, controllers: {
    registration: 'users/registration'
  }
  
  resources :questions
  resources :topics do 
    get 'followed_topic', to: "topics#followed_topic"
  end

  resources :friendships , only: [:index, :destroy] do 
    get 'followed_user', to: "friendships#followed_user" 
  end
end
