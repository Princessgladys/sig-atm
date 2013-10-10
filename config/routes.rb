SigAtm::Application.routes.draw do
  resources :banks
  resources :lokasi_atms

  get "admin" => "admin#index", as: "admin"
  get "home" => "home#index", as: "home"

  root :to => 'home#index'
end
