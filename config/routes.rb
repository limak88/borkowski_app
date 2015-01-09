Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  delete 'users/:id' => 'users#destroy', :as => :admin_destroy_user
  root 'static_pages#home'
  resources "contacts", only: [:new, :create]
  resources "opinions"
  get 'users',        to: 'users#index'
  get '/contact',     to: 'contacts#new'
  get '/realizacje',  to: 'static_pages#realizacje'
  get '/metoda_1',    to: 'static_pages#metoda_1'
  get '/metoda_2',    to: 'static_pages#metoda_2'
  get '/metoda_3',    to: 'static_pages#metoda_3'
end
