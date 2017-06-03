Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people
  resources :events
  resources :visits
  resources :guests

  get '/people/m/host', to: 'people#host', defaults: { format: :json }
  get '/people/m/residente', to: 'people#residente', defaults: { format: :json }
  get '/people/m/invitado', to: 'people#invitado', defaults: { format: :json }

  get '/visit', to: 'visits#do_visit', defaults: { format: :json }
  get '/guest/in', to: 'guests#do_visit', defaults: { format: :json }
  post '/guest/add', to: 'guests#create_by_rut', defaults: { format: :json }

  get '/events/month/:month', to: 'events#get_by_month', defaults: { format: :json }

end
