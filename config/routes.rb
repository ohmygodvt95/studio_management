Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  as :user do
    get "users/edit" => "devise/registrations#edit", as: "edit_user_registration"
    put "users" => "devise/registrations#update", as: "user_registration"
  end

  root "static_pages#show", page: "dashboard"
  get "/pages/:page" => "static_pages#show"

  resources :employees
end
