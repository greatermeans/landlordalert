Rails.application.routes.draw do
  resources :reports
  resources :owners
  resources :buildings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
