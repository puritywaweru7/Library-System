Rails.application.routes.draw do
  resources :books
  resources :users
  resources :borrow_records

  root "books#index"
end
