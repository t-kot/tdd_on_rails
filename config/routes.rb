TddOnRails::Application.routes.draw do


  devise_for :users
  devise_scope :user do
    get "/users/sign_in", to: 'devise/sessions#new', as: :new_user_session
    get "/users/sign_out", to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :users do
    resources :tweets, only:[:index]
  end
  resources :tweets, only:[:show, :new, :create, :destroy]

  root to: "home#index"
end
