Rails.application.routes.draw do
root 'home#top'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :products do
        collection do
          post 'search'
        end
      end
      
      resources :shops
    end
  end
end
