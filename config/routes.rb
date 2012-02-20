Toodoo::Application.routes.draw do

 devise_for   :users
  devise_scope :users do
    get 'users', to: 'notes#index', as: :user_root
  end
  
  resources :projects do
    match 'projects/*status' => 'projects#index'
    resources :tasks do
      get 'check' => 'tasks#check'
    end
  end

  resources :notes

  root to: 'home#index'
end
