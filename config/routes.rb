Rails.application.routes.draw do

  resources :doadors
  resources :beneficiaries
   root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
end