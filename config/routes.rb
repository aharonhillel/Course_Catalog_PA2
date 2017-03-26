Rails.application.routes.draw do
  resources :enrollments
  resources :courses_subjects
  get 'sessions/new'

  get 'users/new'

  resources :users
  resources :instructors
  resources :courses
  resources :subjects
root "sessions#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/search', to: 'search#search'
  get '/search_results', to: 'search#search_results'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
