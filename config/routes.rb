Rails.application.routes.draw do
  root 'diaries#index'
  get '/diaries/index',to: 'diaries#index'

  resources :users
  resources :diaries

  get '/login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
