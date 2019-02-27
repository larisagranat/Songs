Rails.application.routes.draw do
  get 'songs' => 'songs#index'
  get 'songs/:id' => 'songs#show', as:'song'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
