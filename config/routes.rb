Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get ':url', to: 'urls#visit', as: :visit

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :urls, only: [:create, :show]
    end
  end
end
