Rails.application.routes.draw do
  get '/foods', to: 'foods#index' # list
  get '/foods/:id', to: 'foods#show'
  post '/foods', to: 'foods#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
