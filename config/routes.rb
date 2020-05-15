Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list all cocktails
  get "/cocktails", to: "cocktails#index", as: :cocktails

  # add a new cocktail
  get "/cocktails/new", to: "cocktails#new", as: :new_cocktail

  # view details of a cocktail
  get "/cocktails/:id", to: "cocktails#show", as: :cocktail

  # create cocktail
  post "/cocktails", to: "cocktails#create"

  # doses routes
  resources :cocktails do
    resources :doses 
  end

  #get "/cocktails/:cocktail_id/doses/new", to: "doses#new", as: :new_cocktail_dose

  # destroy dose
  delete "/doses/:id", to: "doses#destroy", as: :destroy_dose

end
