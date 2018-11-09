Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: %i[show new create] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]
end
