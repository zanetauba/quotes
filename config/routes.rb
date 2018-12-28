

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "quotes#index"
  resources :quotes, only: [:index, :new, :create] do
  end
  resources :comments, only: [:new, :create]
end


