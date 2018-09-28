Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :qualifications
  resources :controls
  resources :inscriptions
  resources :courses
  resources :entities
  devise_for :people
  resources :classifications
  resources :people
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
