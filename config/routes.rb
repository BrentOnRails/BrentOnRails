BrentOnRails::Application.routes.draw do
  root to: "static_pages#index"

  resources :messages, only: [:create]
end
