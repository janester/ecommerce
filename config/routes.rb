Ecommerce::Application.routes.draw do
  root :to => 'products#index'
  resources :products

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
