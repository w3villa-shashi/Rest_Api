Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/api/v1/movies' => "api/v1/movies#home_page"
  # resources :movies
  # post 'new_movie' => "api/v1/movies#new"
  # post '/create_movie' => "api/v1/movies#create" 

  namespace :api, defaults: { format: :json } do 
    namespace :v1 do 
      resources :movies
    end
  end   
    
end
