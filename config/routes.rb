Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # post request to create new user
  post '/users', to: 'users#create'

  # post request to create new post
  post '/posts', to: 'posts#create'

  # get request to show all posts
  get '/posts', to: 'posts#show'

  # put request to update a post
  put '/posts/:id', to: 'posts#update'

  # delete request to delete a post
  delete '/posts/:id', to: 'posts#destroy'
end
