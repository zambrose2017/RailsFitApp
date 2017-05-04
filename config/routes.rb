Rails.application.routes.draw do
  resources :videos
  get 'pages/about'

  get 'pages/home'

  get 'pages/workout'

  get 'pages/nutrition'

  get 'pages/faq'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

