Rails.application.routes.draw do
  resources :todos
  # resources :users
  post '/auth', to: 'auth#create'

end
