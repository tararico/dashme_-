Rails.application.routes.draw do
  resources :dashmebuttons
  root to: "dashmebuttons#index"
  resources :lists
end
