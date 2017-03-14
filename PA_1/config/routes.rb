Rails.application.routes.draw do
  get 'users/new'

  resources :users
  resources :instructors
  resources :courses
  resources :subjects
  root 'users#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
