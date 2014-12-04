Rails.application.routes.draw do

  devise_for :users
  root 'apartments#index'

  # Routes for the Apartment resource:
  # CREATE
  get('/apartments/new', { :controller => 'apartments', :action => 'new' })
  get('/create_apartment', { :controller => 'apartments', :action => 'create' })

  # READ
  get('/apartments', { :controller => 'apartments', :action => 'index' })
  get('/apartments/:id', { :controller => 'apartments', :action => 'show' })

  # UPDATE
  get('/apartments/:id/edit', { :controller => 'apartments', :action => 'edit' })
  get('/update_apartment/:id', { :controller => 'apartments', :action => 'update' })

  # DELETE
  get('/delete_apartment/:id', { :controller => 'apartments', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  get('/users/:id/new', { :controller => 'users', :action => 'new' })
  get('/create_user/:id', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
