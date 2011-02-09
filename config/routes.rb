TestaltrabioCVI1::Application.routes.draw do
  resources :book_comments

  resources :comments

  resources :novels do
   collection do
      get 'delete_all'
    end
  end

  resources :pocket_dictionaries do
   collection do
      get 'delete_all'
    end
  end

  resources :dictionaries do
   collection do
      get 'delete_all'
    end
  end

  resources :mp3s do
   collection do
      get 'delete_all'
    end
  end

  resources :books do
   collection do
      get 'delete_all'
    end
  end

  resources :videos do
   collection do
      get 'delete_all'
    end
  end

  resources :audios do
   collection do
      get 'delete_all'
    end
  end

  resources :unknowns do
   collection do
      get 'delete_all'
    end
  end
  resources :medias do
    collection do
      get 'initPEJ'
      get 'delete_all'
      get 'populate'
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'medias/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'medias/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => media.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :medias

  # Sample resource route with options:
  #   resources :medias do
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
  #   resources :medias do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :medias do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/medias/* to Admin::MediasController
  #     # (app/controllers/admin/medias_controller.rb)
  #     resources :medias
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
