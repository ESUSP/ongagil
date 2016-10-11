Rails.application.routes.draw do

  resources :projetos
  root 'welcome#index'
  resources :doadors
  resources :beneficiaries
  get '/beneficiaries/new', to: 'beneficiaries#new', as: 'beneficiaries_new'
  get '/beneficiaries/edit', to: 'beneficiaries#edit', as: 'beneficiaries_edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
end
