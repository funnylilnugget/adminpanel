Rails.application.routes.draw do
  root 'pages#home'
  resources :teachers
  resources :students
  resources :courses
  resources :pages
  resources :cohorts

  get 'cohort_signup', to: 'cohorts#new'
end
