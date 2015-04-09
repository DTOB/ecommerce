Rails.application.routes.draw do
  resources :products
  resources :line_items
  resources :orders
  resources :customers
  resources :provinces

# set up a route for a GET to /wally with a name of wally
# get 'wally', to: 'products#index', as: 'wally'

# root has a name of 'root'
  root to: 'products#welcome'

  


  #get '/' => 'products#index'

  # HTTP is a protocol where we use verbs to interact with URIs
  # These are the verbs:
  # GET
  # POST
  # PUT
  # PATCH
  # DELETE

end