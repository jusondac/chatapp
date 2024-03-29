Rails.application.routes.draw do
  resources :rooms do
    collection do
      get :personal_chat
      get :group_chat
    end
    resources :messages
  end
  root 'pages#home'
  devise_for :users, controllers: {
    # sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'user/:id', to: 'users#show', as: 'user'
  resources :users, only: :show do
    collection do
      post :login_system_auth
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
