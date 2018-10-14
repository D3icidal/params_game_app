Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/name_game' => 'games#name'
    # get '/numbers_game' => 'games#numbers'
    get '/numbers_game/:guess' => 'games#numbers'
  end

end
