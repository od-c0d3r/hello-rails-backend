Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    get 'greeting', to: 'api#index'
  end

  get '*path', to: 'api/api#error', defaults: { format: 'json' }

  root 'api/api#show'
end
