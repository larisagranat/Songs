Rails.application.routes.draw do
  root "songs#index"

  get 'songs' => 'songs#index'

  get 'songs/:id' => 'songs#show', as:'song'


  post 'songs' => 'songs#create'

  get 'songs/new' => 'songs#new'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'songs/:id/edit' => "songs#edit", as: "edit_song"
  patch 'songs/:id' => "songs#update" , as: "song"
end
