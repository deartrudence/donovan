Rails.application.routes.draw do
  resources :tweets
  resources :grams
  resources :athlete_stories
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'upload_grams' => 'grams#upload'
  get 'upload_tweets' => 'tweets#upload'

end
