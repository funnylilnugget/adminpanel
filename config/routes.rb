Rails.application.routes.draw do
  root 'pages#home'
  resources :teachers, :students, :courses, :pages, :cohorts 
end
