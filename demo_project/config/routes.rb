Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index, :show, :update, :create, :destroy]
  # get 'users', to: 'users#index'
  # get 'users/new', to: 'users#new'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  # get 'users/:id/edit', to: 'users#edit'
  resources :artworks , only: [:show,:update,:create,:destroy]

  resources :artwork_shares, only: [:create, :destroy]

  resources :users do
    resources :artworks, only: :index
    resources :comments, only: :index
  end

  resources :artworks do
    resources :comments, only: :index
  end

  resources :comments, only: [:create, :destroy]
end
