Rails.application.routes.draw do
  devise_for :users
  root 'posts#new'

  # urlinput이 form 형식의 refresh에서 되는지 테스트
  get 'home/urlinput'

  get 'home/index'
  get 'home/loginpage'
  get 'home/registrationpage'

  get 'mydesk/index'
  get 'mydesk/agenda'
  get 'mydesk/agenda1'
  get 'mydesk/news1'
  get 'mydesk/news2'
  get 'mydesk/follow'
  get 'discover/index'
  post 'desking/desking/:agenda_id' => 'desking#desking', as: :desking_desking

  post 'posts/agendacheck'
  post 'posts/urlinput'
  post 'posts/share'
  delete 'posts/share_destroy/:id' => 'posts#share_destroy', as: :posts_share_destroy

  resources :posts, only: [:new, :create, :destroy], path: '/home'
  resources :agendas do
    resources :posts, only: [:index, :show]
  end
  resources :comments
  
  get 'mydesk/recent' => 'posts#recent'
  get 'mydesk/template' => 'posts#template'

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
