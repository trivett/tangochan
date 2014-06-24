Tangochan::Application.routes.draw do
  devise_for :users
  post "/friendships/create", to: "friendships#create"
  resources :friendships
  get "/me/:id", to: "users#profile"
  resources :users
  get "/users/search/:city", to: "users#search_city"
  get "/users/search/:email", to: "users#search"
  get "/lists/search/:title", to: "lists#search"
  resources :lists
  resources :lists_words
  get "/words/tweet", to: "words#tweet"
  get "/words/audio", to: "words#audio"
  post "/words/remove_from_list", to: "words#remove_from_list"
  resources :words do
    collection do
      get "search"
    end
  end
  get "/lists/:id/save_list", to: "lists#save_list"
  post "/add_to_list", to: "words#add_to_list"
  # resources :categories
  get "/categories", to: "lists#categories"
  get "/lists/:id/test", to: "lists#test"
  get "/lists/:id/flash_card", to: "lists#flash_card"
  post "/lists/:id/test", to: "lists#test"
  post "/users/:id/update_score", to: "users#update_score"
  root 'welcome#index'

end
