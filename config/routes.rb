Rails.application.routes.draw do
  root 'pages#index'
  resources :messages, :projects, :admin

  get     'jadmin'   => 'sessions#new'
  post    'jadmin'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'

end
