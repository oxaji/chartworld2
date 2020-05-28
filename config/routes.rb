Rails.application.routes.draw do
  root to: "charts#index"
  resources :charts, only: [:index, :new, :create, :destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
