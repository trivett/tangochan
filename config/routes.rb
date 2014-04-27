Tangochan::Application.routes.draw do
  devise_for :users
  resources :users
  resources :lists
  resources :lists_words
  resources :categories
  root 'welcome#index'

end
