Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :ingredients, only: [ :index, :new, :create, :show, :edit, :update, :destroy]
    resources :doses, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end
end
