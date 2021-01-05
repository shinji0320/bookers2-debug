Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update,:create] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
  	get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  root 'homes#top'
  get 'home/about' => 'homes#about'
  get '/search', to: 'search#search'
end