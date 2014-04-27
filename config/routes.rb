Tangochan::Application.routes.draw do
  devise_for :users
  resources :users
  resources :lists
  resources :categories
  root 'welcome#index'

end
