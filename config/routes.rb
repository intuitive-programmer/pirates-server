Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :scores, only: [:index, :create]
      resources :userscores, only: [:index, :create]
      post '/addScoreToUser', to: 'users#addScoreToUser'
    end
  end
end

