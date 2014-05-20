SampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/news',    to: 'static_pages#news',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/traditional_advertising',      to: 'static_pages#traditional_advertising',      via: 'get'
  match '/digital_advertising',      to: 'static_pages#digital_advertising',      via: 'get'
  match '/branding', to: 'static_pages#branding', via: 'get'
  match '/media_release', to: 'static_pages#media_release', via: 'get'
  match '/event_management', to: 'static_pages#event_management', via: 'get'
  match '/blogging', to: 'static_pages#blogging', via: 'get'
  match '/seo',      to: 'static_pages#seo',      via: 'get'
  match '/email_marketing',      to: 'static_pages#email_marketing',      via: 'get'
  match '/mobile_marketing',      to: 'static_pages#mobile_marketing',      via: 'get'
  match '/social_media_marketing', to: 'static_pages#social_media_marketing',      via: 'get'
  match '/online_advertising',   to: 'static_pages#online_advertising',   via: 'get'
  match '/market_research',      to: 'static_pages#market_research',      via: 'get'
  match '/strategic_analysis',      to: 'static_pages#strategic_analysis',      via: 'get'
  match '/marketing_objectives',      to: 'static_pages#marketing_objectives',      via: 'get'
  match '/marketing_strategies',      to: 'static_pages#marketing_strategies',      via: 'get' 
  match '/marketing_program_plan',      to: 'static_pages#marketing_program_plan',      via: 'get' 
  match '/google_analytics',      to: 'static_pages#google_analytics',      via: 'get' 
  match '/key_metrics',      to: 'static_pages#key_metrics',      via: 'get' 





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
