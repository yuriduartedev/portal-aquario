Rails.application.routes.draw do
  root 'home#index'  
  resources :researches, only: [:index, :show]
  resources :guidedtour, only: [:index, :show]
  get '/pt-BR', to: 'home#index', as: :pt_br
  get '/en-US', to: 'home#index', as: :en_us
  get '/es-ES', to: 'home#index', as: :es_es
end
