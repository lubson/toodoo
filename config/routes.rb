Toodoo::Application.routes.draw do

  devise_for :users do
      get 'users', to: 'notes#index', as: :user_root
      resources :projects
  end
  
  resources :notes

  root to: 'home#index'
end
