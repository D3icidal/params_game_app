Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/name_game' => 'games#name'
    get '/number_game' => 'games#numbers'
  end

end
