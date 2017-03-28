Rails.application.routes.draw do
  resources :teacher_classes
  resources :students
  resources :class_rooms
  resources :school_years
  resources :teachers
  resources :certificates
  resources :subjects
  resources :roles
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
