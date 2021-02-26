Rails.application.routes.draw do
  devise_for :tests
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout',
    registration: 'signup', sign_up: '' },
    controllers: { registrations: 'user/registrations' }, defaults: { format: :json }

  resource :entries, except: %i[new, update]
end
