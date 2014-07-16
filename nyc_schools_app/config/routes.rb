Rails.application.routes.draw do

  get '/'         =>    'welcome#index', as: 'root'
  get '/about'    =>    'welcome#about', as: 'about'


  resources :boroughs, only: [:index, :show]
  resources :districts, only: [:index, :show]
  resources :schools, only: [:index, :show]
  
end
