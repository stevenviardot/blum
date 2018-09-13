Rails.application.routes.draw do
  resources :posts do
    resources :rents
  end

  devise_for :users
  root 'pages#home'
  get 'pages/contact'
  get '/offres', to: 'pages#offers', as: 'offers'

  get '/mes-locations', to: 'pages#renting_list', as: 'renting_list'
end
