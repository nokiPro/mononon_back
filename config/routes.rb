Rails.application.routes.draw do
  get '/', to: 'users#index'

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :propaties
      end
    end
  end
end
