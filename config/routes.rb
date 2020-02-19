Rails.application.routes.draw do
  resources :products
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  root "products#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
