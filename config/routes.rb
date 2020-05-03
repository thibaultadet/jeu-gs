Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/lettres-sons', to: 'pages#letter_sound'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
