Rails.application.routes.draw do

  

  root 'start_pages#start'
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'
  get 'admin_pages/index'
  get 'finish' => 'tasks#finish', as: 'task_finish'
  get 'search' => 'reports#search', as: 'search'
  get 'search_results' => 'reports#search_results', as: 'search_results'
  get 'search_accident' => 'accidents#search', as: 'search_accident'
  get 'search_results_accident' => 'accidents#search_results', as: 'search_results_accident'
  
  resources :accidents
  resources :divisions
  resources :reports
  resources :tasks
  resources :categories
  resources :users
  resources :places

  resource :session



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
