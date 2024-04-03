Rails.application.routes.draw do
  root 'home#index'
  resources :employees do 
    collection do 
      post :import
    end
  end

  namespace :api do
    namespace :v1 do
      resources :employees do
        collection do 
          post :import
        end
      end
    end
  end
end
