Rails.application.routes.draw do
  get "splash/index"
  get "sessions/new"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "splash#index"

  get "signup", to: "users#new"
  post "signup", to: "users#create"


  resources :users, only: [ :new, :create, :show ]
  get "user_home", to: "users#show"
  get "dashboard", to: "users#dashboard", as: :dashboard

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "tarot/explore", to: "tarot#explore"
  get "tarot/card_of_the_day", to: "tarot#card_of_the_day"
  get "tarot/read_a_spread", to: "tarot#read_a_spread"
  get "tarot/all_cards", to: "tarot#all_cards", as: :tarot_all_cards


  resources :readings, only: [ :show, :update ]
  patch "/readings/:id", to: "tarot#update_reading", as: :update_reading

  resources :quizzes, only: [ :new, :create, :show ] do
    post :grade, on: :member
  end

  resource :learning, only: [ :new, :show ]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
