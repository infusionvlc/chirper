Rails.application.routes.draw do

  resources :chirps

  root 'chirps#index'

  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }

  devise_scope :user do
    get '/:username', to: 'user/registrations#show'
    post '/:username/follow', to: 'user/registrations#follow'
    post '/:username/unfollow', to: 'user/registrations#unfollow'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
