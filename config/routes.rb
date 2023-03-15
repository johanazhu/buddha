Rails.application.routes.draw do
  # get 'topics/index'
  # get 'topics/show'
  # get 'topics/new'
  # get 'hello/index'
  # get '/', to: 'hello#index'

  # root 'hello#index'
  root "topics#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/", to: "home#index"

  resources :topics do
    resources :replies 
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :topics
  #     # resources :validation_codes, only: [:create]
  #     # resource :session, only: [:create, :destroy]
  #     # resource :me, only: [:show]
  #     # resources :items
  #     # resources :tags
  #   end
  # end
end
