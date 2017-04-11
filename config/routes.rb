Rails.application.routes.draw do
  resources :payments, only: [:new, :create]

  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
