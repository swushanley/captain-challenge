Rails.application.routes.draw do

 # resources :games do
 #  get 'weapons', on: :player
 # end
 resources :players, :games

 root to: 'players#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
