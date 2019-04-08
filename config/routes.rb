Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'patients#index'

  resource :emergency_transfer_forms, only: %i[new create edit update destroy]

  resources :patients, only: %i[index show]
end
