Rails.application.routes.draw do

  devise_for :users
  
  get 'products/new'

  get 'subcategories/new'

  get 'welcome/listofproducts' 

  get 'welcome/homepage'

  get 'welcome/sign_up'

  get 'welcome/register'

  match 'about', to: 'welcome#about', via: 'get'
  match 'listofproducts', to: 'welcome#listofproducts', via: 'get'
  match 'details', to: 'welcome#details', via: 'get'

  match 'sign_up', to: 'welcome#sign_up', via: 'get'
  match 'register', to: 'welcome#register', via: 'get'

  match 'users/sign_out' => "devise/sessions#destroy", via: 'get'


  resources :users
  resources :products
  resources :categories
  resources :subcategories

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#homepage'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
