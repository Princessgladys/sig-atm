SigAtm::Application.routes.draw do
  
  resources :users do
    collection do
      post "registration"
    end
  end

  resources :sessions
  resources :user_roles
  resources :min_transaksis
  resources :kategori_atms

  resources :atms do
    member do
      get "edit_atm_user"
    end
    
    collection do
      post "create_atm_user"
      get "new_atm_user"
      get "index_atm_user"
    end
  end
  
  resources :banks
  resources :lokasi_atms

  put "update_atm_user/:id" => "atms#update_atm_user", as: "update_atm_user"
  
  get "log_out" => "sessions#destroy", as: "log_out"
  get "sign_up" => "users#sign_up", as: "sign_up"

  get "admin" => "admin#index", as: "admin"
  get "home" => "home#index", as: "home"

  root :to => 'sessions#new'
end
