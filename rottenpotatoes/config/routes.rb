Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  #added route for part 2
  #get '/movies/:id/by_director', :to => 'movies#by_director', :as => :by_director
  match '/movies/:id/by_director', to: 'movies#by_director', as: 'by_director', via: :get
end
