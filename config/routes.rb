Toodoo::Application.routes.draw do

  devise_for :users do
      get 'users', to: 'notes#index', as: :user_root
  end
  
  resources :projects do
    resources :tasks

    get '*status', to: 'project#index'
  end

  resources :notes

  root to: 'home#index'
end
