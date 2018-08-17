Rails.application.routes.draw do
  get 'inscriptions/new'
  post 'inscriptions', to: 'inscriptions#create', as: 'inscription_registration'
  devise_for :users
  resources :courses
  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
