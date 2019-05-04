Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitor_infos
  resources :user_contacts
  get '/about', to: "app#about"
  get '/contact', to: "app#contact"
  root to: "app#index"
end
