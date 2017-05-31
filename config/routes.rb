Rails.application.routes.draw do
  resources :students
  resources :books
  root 'home#index'
end
