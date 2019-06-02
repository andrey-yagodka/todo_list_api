Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'sign_up', controller: :users, action: :create
      post 'sign_in', controller: :authentication, action: :create

      resources :projects, only: [:create, :update, :destroy]
      resources :tasks, only: [:create, :update, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end
end
