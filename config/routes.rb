Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users, controllers: {
    registration: 'users/registration'
  }
  
  resources :questions
  resources :users do
    post 'follow_user', on: :member
  end
end
