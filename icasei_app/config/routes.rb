Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitor_infos
  resources :user_contacts
  root to: "app#index"
end
