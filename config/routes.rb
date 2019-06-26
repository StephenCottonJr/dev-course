Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'quotes#index'
  resources :quotes
  get "contact", to: "pages#contact"
  # resources :author
  get "author", to: "pages#author"
  get "about", to: "pages#about"

end
