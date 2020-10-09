Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'rooms/show'
  devise_for :users
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

  post 'todolists' => 'todolists#create'

  get 'todolists' => 'todolists#index'

  get 'todolists/:id' => 'todolists#show', as: 'todolist'
end
