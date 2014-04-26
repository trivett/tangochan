Tangochan::Application.routes.draw do
  devise_for :users
  resources :users

  root 'welcome#index'
end