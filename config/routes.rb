Rails.application.routes.draw do
  devise_for :tests
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout',
                                             registration: 'signup', sign_up: '' },
                     controllers: { sessions: 'users/sessions', registrations: 'users/registrations' },
                     defaults: { format: :json }
  get '/user', to: 'users#show'
  resources :entries, except: [:update]
end
