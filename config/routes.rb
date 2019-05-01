Rails.application.routes.draw do
  root to: 'documentations#api_v1'

  namespace :api do
    namespace :v1 do
      post 'sign_up', controller: :users, action: :create
      post 'sign_in', controller: :authentication, action: :create

      resources :projects, only: [:create, :update, :destroy]
    end
  end
end
