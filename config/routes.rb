Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people
  resources :events
  resources :visits
  resources :guests

  get '/people/m/host', to: 'people#host', defaults: { format: :json }
  get '/people/m/residente', to: 'people#residente', defaults: { format: :json }
  get '/people/m/embajador', to: 'people#embajador', defaults: { format: :json }
  get '/people/m/invitado', to: 'people#invitado', defaults: { format: :json }
  get '/people/m/invitado1', to: 'people#invitado1', defaults: { format: :json }
  get '/people/m/normal', to: 'people#normal', defaults: { format: :json }

  get '/visit', to: 'visits#do_visit', defaults: { format: :json }
  get '/guest/in', to: 'guests#do_visit', defaults: { format: :json }
  post '/guest/add', to: 'guests#create_by_ruts', defaults: { format: :json }

  get '/events/month/:month', to: 'events#get_by_month', defaults: { format: :json }

  get 'statistics/1/:id', to: 'statistics#get_guests_vs_attendees', defaults: { format: :json }
  get 'statistics/2/:id', to: 'statistics#get_attendees_by_type', defaults: { format: :json }
  get 'statistics/3/:id', to: 'statistics#get_attendes_by_hour', defaults: { format: :json }
  get 'statistics/4/:id', to: 'statistics#get_guests_by_user', defaults: { format: :json }

  get '/get_drink', to: 'drinks#get_drink', defaults: { format: :json }

  # Profiles
  get '/profile', to: 'profiles#index', defaults: { format: :json }
  post '/profile', to: 'profiles#create', defaults: { format: :json }
  put '/profile', to: 'profiles#update', defaults: { format: :json }
  patch '/profile', to: 'profiles#update', defaults: { format: :json }
  delete '/profile', to: 'profiles#destroy', defaults: { format: :json }
  post '/profile/avatar', to: 'profiles#update_avatar', defaults: { format: :json }

end
