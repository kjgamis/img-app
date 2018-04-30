Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :photos do
    resource :comments, only: [:create, :edit, :update, :destroy]
  end

  resource :session, only: [:new, :create, :destroy]

  resource :users, only: [:new, :create]
end
