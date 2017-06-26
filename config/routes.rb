Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'
  
  root 'users#index'

  get    '/users',          to: 'users#index'
  post   '/users',          to: 'users#create'
  get    '/users/new',      to: 'users#new',  as: 'new_user'
  
  get    '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get    '/users/:id',      to: 'users#show', as: 'user'
  
  patch  '/users/:id',      to: 'users#update'
  put    '/users/:id',      to: 'users#update'
  delete '/users/:id',      to: 'users#destroy'
end
