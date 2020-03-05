Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/show_name" => "params#show_name"
    get "/number_game" => "params#guess"
    get "/segment_param/:number" => "params#segment" 
  end
end
