Rails.application.routes.draw do
  get '/mbta_birds' => 'mbta_birds#index'
  get '/mbta_birds/:id' => 'mbta_birds#show'
  post '/mbta_birds' => 'mbta_birds#create'
  patch '/mbta_birds/:id' => 'mbta_birds#update'
  delete '/mbta_birds/:id' => 'mbta_birds#destroy'
end
