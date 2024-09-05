Rails.application.routes.draw do
  get "recipes/index"
  resources :recipes, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "recipes#index"
end
