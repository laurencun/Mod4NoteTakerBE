Rails.application.routes.draw do
  resources :todos
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'

  root 'welcome#index'

end
