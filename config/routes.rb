NUgroupsApp::Application.routes.draw do
  resources :posts
  resources :users

  resource :session

  match 'auth/:provider/callback', to: 'sessions#create', :via => :get
  match 'signout', to: 'sessions#destroy', as: 'signout', :via => :get

  root 'pages#homepage'

end
