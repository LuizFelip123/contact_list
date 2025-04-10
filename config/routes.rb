Rails.application.routes.draw do
  get "sessions/new"
  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]

  get "up" => "rails/health#show", as: :rails_health_check


  root "static_pages#index"
  
  get 'sobre', to:'static_pages#sobre'
  get 'contato', to:'static_pages#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to:'sessions#create'
  delete 'sair', to: 'sessions#destroy'
  
end
