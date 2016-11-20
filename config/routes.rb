Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   get "/pokemons", to: "pokemons#index"

  get "/pokemons/new", to: "pokemons#new"
  post "/pokemons/create", to: "pokemons#create"

  get "pokemons/:id/edit", to: "pokemons#edit"
  patch "pokemons/:id", to: "pokemons#update"

  delete "pokemons/:id", to: "pokemons#destroy"

  get "pokemons/:id", to: "pokemons#show"
end
