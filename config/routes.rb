Rails.application.routes.draw do
  resources :updates, only: [:index, :create]
  patch "/updates" => "updates#update"
  root 'updates#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
