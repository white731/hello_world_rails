Rails.application.routes.draw do
  # root 'static_pages#home'
  root 'static_pages#home'


  #custom route
  get '/about', to: 'static_pages#about'

  

  #resources generates crud action routes in this case from pages
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
