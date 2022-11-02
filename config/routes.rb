Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'

  get 'users/show'
  get 'users/edit'
  get 'users/index'
  get 'books/index'
  get 'books/show'
  resouces :books, only:[:index, :show, :edit, :update, :destroy]
  resouces :users, only:[:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
