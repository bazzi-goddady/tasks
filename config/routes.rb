Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    registrations: :registrations,
    sessions: :sessions
  }

  root 'tasks#index'

  resources :tasks, only: [:index, :show, :create, :update]
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/:id', to: 'tasks#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
