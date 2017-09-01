Rails.application.routes.draw do
  root "static_pages#show", page: "dashboard"
  get "/pages/:page" => "static_pages#show"
end
