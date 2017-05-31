Rails.application.routes.draw do
  resources :videos, except: [:show]
  get 'video/:id', to: 'videos#show', as: 'video_show'

  get 'about', to: 'pages#about'
  get 'workout', to: 'pages#workout'
  get 'nutrition', to: 'pages#nutrition'
  get 'faq', to: 'pages#faq'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'pages#home'

end

