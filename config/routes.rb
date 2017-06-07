Rails.application.routes.draw do
  resources :students do
    collection { post :import}
  end
  resources :books do
    collection { post :import}
  end
  root 'home#index'
end
