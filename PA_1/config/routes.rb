Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  resources :users
  resources :instructors
  resources :courses
  resources :subjects
  root 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
