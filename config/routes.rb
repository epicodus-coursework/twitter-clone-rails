Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  root :to => 'posts#index'

  resources :users do
    resources :posts
  end
  resources :posts
end
