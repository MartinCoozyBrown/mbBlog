Rails.application.routes.draw do
  # get 'user/new'

  # get 'user/create'

  # get 'user/edit'

  # get 'user/update'

  # get 'user/show'

  # get 'user/login'

  # get 'user/authenticate'

  # get 'user/login'

  # get 'user/authenticate'

  # get 'login/authenticate'

  # get 'user/new'

  # get 'user/create'

  # get 'user/edit'

  # get 'user/update'

  # get 'user/show'

  # get 'story/index'

  # get 'story/create'

  # get 'story/new'

  # get 'story/edit'

  # get 'story/show'


  # resources :urls
  # resources :users, except: [:index, :destroy]

  # get  'login', to: 'users#login'
  # post 'login', to: 'users#authenticate'

  # get 'logout', to: 'users#logout'

  # get 'signup', to: 'users#new'

  # get 'login'= "home#login"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'story#index'

  resources :stories
  resources :users, except: [:index, :destroy]

  get 'view_stories', to: 'story#show'
  get 'new_story', to: 'story#new'



  get  'login', to: 'users#login'
  post 'login', to: 'users#authenticate'

  get 'logout', to: 'users#logout'

  get 'signup', to: 'users#new'

  #get 'login', to: "home#login"

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
