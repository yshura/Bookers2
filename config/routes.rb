Rails.application.routes.draw do
 
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  resources :books, only:[:new, :index, :edit]
  resources :users, only:[:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
