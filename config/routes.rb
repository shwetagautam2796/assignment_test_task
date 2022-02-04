Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users,
           :controllers => { :registrations => "users/registrations",
                             :confirmations => "users/confirmations",
                             :sessions => 'users/sessions',
                             :passwords => 'users/passwords'
                          }
  devise_scope :user do  
     get '/users/sign_out' => 'users/sessions#destroy'     
  end
end
