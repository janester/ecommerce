Ecommerce::Application.routes.draw do
  root :to => 'products#index'
  resources :products do
    collection do
      get "filter/:tag_id", :action => :filter, :as => :filter
      get "search"
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
