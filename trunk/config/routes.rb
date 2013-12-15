SigAtm::Application.routes.draw do
  resources :min_transaksis


  resources :kategori_atms


  resources :atms


  resources :banks
  resources :lokasi_atms

  get "admin" => "admin#index", as: "admin"
  get "home" => "home#index", as: "home"
  get "test" => "home#test", as: "test"

  root :to => 'home#index'
end
