Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'send_data#index'
  get 'send_data', to: 'send_data#index'
  get 'send_data/index'

  post '/', to: 'send_data#index'
  post 'send_data', to: 'send_data#index'
  post 'send_data/index'

  get 'send_data/delete'
end
