Rails.application.routes.draw do
  resources :reading_lists
  devise_for :users
  root "pages#home"
  get "toys" => "pages#toys"
  get "blog" => "pages#blog"
  get "reading-list" => "pages#reading_list"
  get "reading-list/edit" => "reading_lists#edit"

  resources :posts, path: 'blog'
  resources :reading_lists
  
  get "get-hex", to: "hex_generators#get_hex"
end
