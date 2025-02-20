Rails.application.routes.draw do
  get '/mbta_birds' => 'birds#index'
  get '/mbta_birds/:id' => 'birds#show'
  post '/mbta_birds' => 'birds#create'
  patch '/mbta_birds/:id' => 'birds#update'
  delete '/mbta_birds/:id' => 'birds#destroy'
end
