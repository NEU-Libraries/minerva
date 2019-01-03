Minerva::Engine.routes.draw do
  resources :states, :except => [:edit, :update, :destroy]
  resources :assignments
  resources :interfaces
  resources :statuses
  resources :workflows
end
