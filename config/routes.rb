Rails.application.routes.draw do
  resources :tweets

  # resources :fotos, controller: :photos
  resources :photos
   # resources :tweets, only: [ :show ]
  # resources :tweets, except: [ :edit, :update ]
  root to: "main#hello"

  get "hola", to: "main#hello"

  get "saludo", to: "main#hi"
  post "hi", to: "main#greetings"
end
