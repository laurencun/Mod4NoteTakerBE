Rails.application.routes.draw do
  resources :todos
  post '/auth', to: 'auth#create'
end
