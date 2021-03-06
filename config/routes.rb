Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end

end
