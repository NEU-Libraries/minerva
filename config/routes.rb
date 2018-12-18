Minerva::Engine.routes.draw do
  resources :states
  resources :assignments
  resources :interfaces
  resources :statuses
  resources :workflows
end
