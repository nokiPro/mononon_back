Rails.application.routes.draw do
  resources :properties
  get '/', to: 'users#index'

  namespace :api do
    namespace :v1 do
      resources :users do
            end
    end
  end
end
