Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :books
  get 'drafts' => "books#drafts"
  get 'user_books' => "books#user_books"
end
