Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
<<<<<<< HEAD
  root to: 'home#index'
  get '/about' => 'home#about'
=======
  root to: 'articles#index'

  resources :articles, only: [:show]
>>>>>>> parent of fe0af3c... no message
=======
  root to: 'articles#index'

  resources :articles, only: [:show, :new, :create]
>>>>>>> master
end
