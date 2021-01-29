Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :feeds, only: %i[index]

  resources :products

  resources :users
  resources :user_rooms
  resources :rooms
  resources :messages

end
