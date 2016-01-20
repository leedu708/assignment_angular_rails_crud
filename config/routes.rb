Rails.application.routes.draw do
  
  root 'angular#index'

  scope 'api' do
    resources :pins, only: [:index]
  end
  
end
