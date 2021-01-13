Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/edit'
  get 'comments/create'
  get 'comments/destroy'
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/edit'
  get 'tweets/update'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
