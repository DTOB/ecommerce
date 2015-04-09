Rails.application.routes.draw do
  resources :products
  resources :line_items
  resources :orders
  resources :customers
  resources :provinces

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