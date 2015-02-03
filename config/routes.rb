Rails.application.routes.draw do
  # get '/:locale' => 'publics#index'
  root "publics#index"
  scope "/:locale" do
    resources :publics
  end
  # resources :publics do
  #   collection do
  #     post 'subscribe'
      
  #   end
  # end 
  # get ':controller(/:action(/:id))'
  # get 'clients/:status' => 'movies#test', foo: 'bar'
  # get '/testing/status' =>  "movies#test"
  # get '/stories', to: redirect('/users')
  
  get 'sessions/new'

  get 'users/new'

  resources :movies do
    resources :trailers
  end

  # resources :movies

  # resources :trailers



 # scope doesnt change routes. It remains same as for resource.
  scope :admin do
    resources :actors
  end

  # namespace :admin do
  #    resources :actors
  #  end


  # resources :actors

  resources :users
  get 'setprefs', to: 'users#setprefs'
  get 'login', to: 'users#login'
  get 'logout', to: 'users#logout'

  match ':controller(/:action(/:id))', :via => [:get , :post]

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
