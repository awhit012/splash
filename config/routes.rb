Splashy::Application.routes.draw do

  get 'home/index'

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  root to: 'home#index'

  get '*path', to: 'home#index'
end
