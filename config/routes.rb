Rails.application.routes.draw do
  resources :posts do
    resources :rents
  end

  devise_for :users
  root 'pages#home'
  get 'pages/contact'
  get '/offres', to: 'pages#offers', as: 'offers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
