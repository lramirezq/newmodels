NewModels::Application.routes.draw do
  
  
  resources :myphotos

  resources :albums

  resources :historials

  resources :detallecompetencias

  resources :competencias

  resources :cotizaciones

  resources :lcotizas

  resources :fotos

  resources :telefonos

  resources :bookers

  resources :agenciamadres

  resources :agenciaextranjeras

  resources :clientes

  resources :caracteristicas

  resources :modelos
  resources :users
  resources :mantenedors 


  controller :home do
    get   'about'     => :about
    get   'password'  => :password
    post  'password'  => :password
    get   'logon'     => :index
    post  'logon'     => :logon
    get   'logoff'    => :logoff
  end

  root :to => "home#index"
  match "proyectos/:id/validate" => "proyectos#validate", :as => :validate_proyecto
  match "cotizaciones/:id/show_pdf" => "cotizaciones#show_pdf", :as => :show_pdf
  match 'javascripts/cliente(.:format)' => "javascripts#cliente"
  match 'javascripts/modelo(.:format)' => "javascripts#modelo"
  match 'busquedas/modelos(.:format)' => "busquedas#modelo", :as => :busca_modelo
  match 'competencias/:id/informe_comercial' => "competencias#informe_comercial", :as => :informe_comercial
  match 'competencias/:id/envio_mail' => "competencias#envio_mail", :as => :envio_mail
  match 'modelos/:id/subir_foto' => "modelos#subir_foto", :as => :subir_foto
  match 'modelos/:id/ver_album/:otro' => "modelos#ver_album", :as => :ver_album
  
  
  # match ':controller(/:action(/:id(.:format)))'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
