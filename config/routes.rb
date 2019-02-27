Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'songs/:id/edit' => "songs#edit", as: "edit_song"
  patch 'songs/:id' => "songs#update"
end
