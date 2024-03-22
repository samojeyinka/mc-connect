Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :likes
  resources :posts do
    resources :post_comments
    resources :post_likes
  end
  root 'users#index'
end