Rails.application.routes.draw do
  get "/search" => "songs#search"
  get "/songs/named/:name" => "songs#search"
  resources :songs, only: [:index, :show, :new, :create]
end
