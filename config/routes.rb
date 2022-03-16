Rails.application.routes.draw do
  resources :birds # since we're now using all five RESTful routes, we can omit the only option:
  #only: [:index, :show, :create, :update, :destroy]
  patch "/birds/:id/like", to: "birds#increment_likes"
end
