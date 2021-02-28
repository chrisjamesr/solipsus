Rails.application.routes.draw do
  root to: 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html\

  # users, user/posts, user/post
  resources :users do
    resources :posts
  end

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # delete '/logout' => 'sessions#destroy'

  # post 'user_token' => 'user_token#create'
  # resources :post_like, :as => :like, :path => :like, :only => [:create, :index, :update]
  # get '*path', to: "application#fallback_index_html", constraints: ->(request) do
  #   !request.xhr? && request.format.html?
  # end
end
