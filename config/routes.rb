Rails.application.routes.draw do
  resources :tweets
  resources :grams
  resources :athlete_stories
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#show', id: '1'

  get 'admin' =>'pages#edit', id: '1'

  get 'upload_grams' => 'grams#upload'
  get 'upload_tweets' => 'tweets#upload'

  post 'general_inquiry' => 'pages#general_inquiry'
  post 'bailey_inc_inquiry' => 'pages#bailey_inc_inquiry'

end
