Toodoo::Application.routes.draw do

  devise_for :users do
      get 'users', to: 'notes#index', as: :user_root
  end
  
  resources :projects do
    resources :tasks
  end
  match 'projects/*status' => 'projects#index'

  resources :notes

  root to: 'home#index'
end
