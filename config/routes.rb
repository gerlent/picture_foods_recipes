Rails.application.routes.draw do

  apipie
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'search_recipes' => 'recipe_query#search'
end
