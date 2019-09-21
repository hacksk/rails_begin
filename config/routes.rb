Rails.application.routes.draw do

  resources :students
  resources :articles do
    member do
      get :premium
    end

    collection do
      get :premium, to: 'articles#premium_collection'
    end
  end
  resources :users do
    collection do
      get :register
      get :login
      post :authenticate
    end
  end

  # get :something, to: 'articles#something'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
