Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    get 'greeting', to: 'api#index'
  end
end
