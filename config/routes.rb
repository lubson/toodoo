Toodoo::Application.routes.draw do

  devise_for :users do
      get 'users', to: 'notes#index', as: :user_root
  end
  
  resources :projects
     #get 'projects', to: 'projects#index', as: 
  resources :notes

  root to: 'home#index'
end
