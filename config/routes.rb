Tangochan::Application.routes.draw do
  devise_for :users
  resources :users

  resources :categories
  root 'welcome#index'

end
