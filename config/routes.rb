Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resource :favorites, only: [:create, :destroy]
 end
end
