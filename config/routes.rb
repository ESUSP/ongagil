Rails.application.routes.draw do

<<<<<<< HEAD
=======
  get 'sessions/new'

#<<<<<<< HEAD
>>>>>>> 65b631928f63eb8ea6b26108159fbf5bf8ea729b
  resources :projetos
  root 'welcome#index'
  resources :doadors
  resources :beneficiaries
  get '/beneficiaries/new', to: 'beneficiaries#new', as: 'beneficiaries_new'
  get '/beneficiaries/edit', to: 'beneficiaries#edit', as: 'beneficiaries_edit'
<<<<<<< HEAD
=======
#>>>>>>> 9102b7dddff7f90a1a9f7749e76ff707d78c9eed
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
>>>>>>> 65b631928f63eb8ea6b26108159fbf5bf8ea729b
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :usuarios
  
  
  
end
