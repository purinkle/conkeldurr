Rails.application.routes.draw do
  resources :posts, only: %i[index new create show edit update]
end
