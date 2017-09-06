Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  as :user do
    get "profile/edit" => "devise/registrations#edit", as: "edit_user_registration"
    put "profile" => "devise/registrations#update", as: "user_registration"
  end

  root "static_pages#show", page: "dashboard"
  get "/pages/:page" => "static_pages#show"
end
