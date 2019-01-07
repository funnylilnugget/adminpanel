Rails.application.routes.draw do


  root 'pages#home'

  resources :sessions, only: [:new, :create, :index, :destroy]

  resources :admins do
    resources :courses
    resources :teachers
    resources :students
    resources :cohorts

  end

  resources :pages

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get  'logout', to: 'sessions#destroy'
  delete  'logout', to: 'sessions#destroy'

  get 'admins', to: 'pages#home'

end
