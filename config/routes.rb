Rails.application.routes.draw do
  get '/clothings', to: 'clothings#index'
  get '/clothings/:id', to: 'clothings#show'
  post '/clothings', to: 'clothings#create'

  get '/foods', to: 'foods#index' # list
  get '/foods/:id', to: 'foods#show' # get
  post '/foods', to: 'foods#create' # create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
