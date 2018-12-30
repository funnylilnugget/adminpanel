Rails.application.routes.draw do
  get 'admins/new'
  get 'admins/edit'
  get 'admins/show'
  get 'admins/index'
  root 'pages#home'
  resources :teachers
  resources :students
  resources :courses
  resources :pages
  resources :cohorts

  get 'cohort_signup', to: 'cohorts#new'
end
