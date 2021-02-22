Rails.application.routes.draw do
  resources :tech_projects
  resources :posts
  resources :comments
  resources :reviews
  resources :campgrounds
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
