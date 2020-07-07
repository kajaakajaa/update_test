Rails.application.routes.draw do
  get 'updates/show'
  get 'updates/edit'
  get 'updates/update'
  get "updates/new"

  root 'updates#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
