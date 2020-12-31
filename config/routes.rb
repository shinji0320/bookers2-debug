Rails.application.routes.draw do
  get 'favorite/create'
  get 'favorite/destroy'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update,:create]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  root 'homes#top'
  get 'home/about' => 'homes#about'
end