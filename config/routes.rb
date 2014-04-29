Tangochan::Application.routes.draw do
  devise_for :users
  resources :friendships
  resources :users
  resources :lists
  resources :lists_words
  get "/words/tweet", to: "words#tweet"
  resources :words do
    collection do
      get "search"
    end
  end
  post "/add_to_list", to: "words#add_to_list"
  post "words/remove_from_list", to: "words#remove_from_list"
  resources :categories
  root 'welcome#index'

end
