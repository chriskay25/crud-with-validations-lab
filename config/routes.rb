Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  delete 'songs/:id', to: 'songs#destroy', as: 'delete_song'
end
