Rails.application.routes.draw do
  root "plans#index"
  resources :plans, :catalogs, :majors
  devise_for :users, :controllers => {:registrations => 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
