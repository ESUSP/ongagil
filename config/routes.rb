Rails.application.routes.draw do

<<<<<<< HEAD
  resources :recebimentos
=======
  resources :atividades
  resources :ongs
>>>>>>> 36f288fee057b7dd2bb759e3d139b9343e8fc410
  get 'sessions/new'

  resources :projetos
  root 'welcome#index'

  resources :doadors
  resources :beneficiaries
  get '/beneficiaries/new', to: 'beneficiaries#new', as: 'beneficiaries_new'
  get '/beneficiaries/edit', to: 'beneficiaries#edit', as: 'beneficiaries_edit'

  get '/registrar', to: 'usuarios#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get    '/ongs',   to: 'ongs#index'
  get    '/ongs/new',   to: 'ongs#new'
  get    '/ongs/edit',   to: 'ongs#edit'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
  
end