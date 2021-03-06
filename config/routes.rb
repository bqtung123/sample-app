Rails.application.routes.draw do
 
  
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  
  resources :users
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :account_activations , only: [:edit]
  resources :password_resets , only: [:new,:edit,:create,:update]
  resources :microposts , only: [:create , :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
