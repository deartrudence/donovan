Rails.application.routes.draw do
  resources :athlete_stories
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

end
