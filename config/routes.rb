Rails.application.routes.draw do
  devise_for :users
  resources :notes
  root 'pages#home'
end
