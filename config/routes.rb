Rails.application.routes.draw do
  get '/', to: 'hello#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/", to: "home#index"

  # namespace :api do
  #   namespace :v1 do
  #     resources :validation_codes, only: [:create]
  #     resource :session, only: [:create, :destroy]
  #     resource :me, only: [:show]
  #     resources :items
  #     resources :tags
  #   end
  # end
end