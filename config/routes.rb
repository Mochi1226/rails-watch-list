Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Routes for lists and can be nested under movies
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

end
