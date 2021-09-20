Rails.application.routes.draw do
  root 'declarations#new'
  resources :declarations, only: %i[index new create]

end
