Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :courses
  resources :skills, only: [:index, :show]
  resources :users, only: [:show, :new, :create, :edit, :update, :delete]


end
