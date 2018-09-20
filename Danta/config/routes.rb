Rails.application.routes.draw do
  devise_for :people
  resources :classifications
  resources :controls
  resources :qualifications
  resources :inscriptions
  resources :courses
  resources :people
  resources :entities
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
