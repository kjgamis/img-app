Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'photos#index'
  get '/', to: 'photos#index', as: 'root'

  resources :home, only: :index

  resources :photos do
    resource :comments, only: [:create, :edit, :update, :destroy]
  end

  resource :session, only: [:new, :create, :destroy]

  resource :users, only: [:new, :create]
end
