Rails.application.routes.draw do

  root 'pages#home'

  resources :teachers
  resources :students
  resources :courses
  resources :pages
  resources :cohorts
  resources :admins

  get 'cohort_new', to: 'cohorts#new'
  get 'student_new', to: 'students#new'
  get 'teacher_new', to: 'teachers#new'
  get 'course_new', to: 'courses#new'

end
