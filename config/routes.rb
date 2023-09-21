Rails.application.routes.draw do
  get 'student_not_initalized', :to => 'students#student_not_initialized'
  devise_for :users
  # resources :users
  resources :presentation_scores
  resources :student_presentations
  resources :presentations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "main#index"
  # get "signup", to: "student#new"
  # get "login", to: "sessions#new"
  # post "login", to: "sessions#create"
  # delete "logout", to: "sessions#destroy"
  # get 'presentationscore/new', to: 'presentationscore#new'
  resources :students
  # get '/presentationscore/:id', to: 'presentationscore#new'
  # Defines the root path route ("/")
  # root "articles#index"
end
