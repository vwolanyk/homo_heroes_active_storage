Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'queer_icons#homo'

get 'queer_icons' => 'queer_icons#index'

post 'queer_icons' => 'queer_icons#create'

get 'queer_icons/new' => 'queer_icons#new'

get 'queer_icons/:id' => 'queer_icons#show'

resources :users, only: %i(new create)
resources :sessions, only: %i(new create destroy)



end
