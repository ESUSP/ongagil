Rails.application.routes.draw do

  get 'sessions/new'

#<<<<<<< HEAD
  resources :projetos
  root 'welcome#index'
#=======
  resources :doadors
  resources :beneficiaries
  get '/beneficiaries/new', to: 'beneficiaries#new', as: 'beneficiaries_new'
  get '/beneficiaries/edit', to: 'beneficiaries#edit', as: 'beneficiaries_edit'
#>>>>>>> 9102b7dddff7f90a1a9f7749e76ff707d78c9eed
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
  
  
  
end