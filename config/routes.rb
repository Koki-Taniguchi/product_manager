Rails.application.routes.draw do
root 'home#top'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :products, only: [:index, :create, :update, :destroy] do
        collection do
          post 'search'
        end
      end
      
      resources :shops, only: [:index, :show]
    end
  end
end
