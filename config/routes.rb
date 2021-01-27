Rails.application.routes.draw do
  # get 'home/index'
  root to: "home#index"
  post "/upload_csv", to: "home#upload_csv"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
