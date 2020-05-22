Rails.application.routes.draw do
  resources :posts, only: %i[new create show]
end
