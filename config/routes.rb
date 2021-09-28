Rails.application.routes.draw do
  get "/api/login", to: "api/sessions#new"
  post "/api/login", to: "api/sessions#create"
  post "/api/signup", to: "api/users#create"
  delete "/api/logout", to: "api/sessions#destroy"
  get "/api/get_current_user", to: "api/sessions#get_current_user"
  
  namespace :api do
    resources :users do
      resources :notepads
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
