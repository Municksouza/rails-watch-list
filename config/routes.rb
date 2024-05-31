Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up" => "rails/health#show", as: :rails_health_check
resources :lists, only: [:index, :create, :new, :show] do
  resources :bookmarks, only: [:create, :new]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  end
  resources :bookmarks,:destroy
  # Defines the root path route ("/")
  # root "posts#index"
end
# # Rails.application.routes.draw do
# #   resources :lists do
# #     resources :bookmarks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
# #   end
# # end
# post "lists/:list_id/bookmarks", to: "bookmarks#create"
# get "lists:list_id/bookmarks/new", to: "bookmarks#new#id"
# get "lists", to: "lists#index"
# post "lists", to: "lists#create"
# get "lists/new", to: "lists#new"
# get "lists/:id", to: "lists#show"
# get "bookmarks", to: "bookmarks#index"
# post "bookmarks", to: "bookmarks#create"
# get "bookmarks/new", to: "bookmarks#new"
# get "bookmarks/:id/edit", to: "bookmarks#edit"
# get "bookmarks/:id", to: "bookmarks#show"
# patch "bookmarks/:id", to: "bookmarks#update"
# put "bookmarks/:id", to: "bookmarks#update"
# delete "bookmarks/:id", to: "bookmarks#destroy"
# get "destroy", to: "destroy#index"
# post "destroy", to: "destroy#create"
# get "destroy/new", to: "destroy#new"
# get " destroy/:id/edit", to: "destroy#edit"
# get "destroy/:id", to: "destroy#show"
# patch "destroy/:id", to:  "destroy#update"
# put "destroy/:id", to: "destroy#update"
# delete "destroy/:id", to: "destroy#destroy"
