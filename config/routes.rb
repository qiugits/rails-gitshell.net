Rails.application.routes.draw do
  get 'profiles/info'
  get 'info' => 'profiles#info'

  get 'profiles' => 'profiles#index'
  resources :profiles

  get 'vainglory_links' => 'profiles#vainglory_links'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'profiles#index'
end
