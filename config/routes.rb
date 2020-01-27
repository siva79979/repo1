Rails.application.routes.draw do
  get 'products/new', :to => 'products#new', :as => 'new_products'
  get 'products/index'
  get 'products/edit'
  


 
  get '/customers/index',    :to => 'customers#index', :as => "customers"
  get '/customers/new',      :to => "customers#new", :as => "new_customer"
  get '/customers/edit/:id', :to => "customers#edit", :as => "edit_customer"
  get '/customers/show/:id',     :to => 'customers#show', :as => "customer_orders"
  patch '/customers/update/:id', :to => "customers#update", :as =>"update_customer"
  post '/customers/create', :to => "customers#create", :as => "create_customer"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/orders/new', :to => "orders#new", :as => "new_orders"
post '/orders/create', :to => "orders#create", :as => "create_order"
end
