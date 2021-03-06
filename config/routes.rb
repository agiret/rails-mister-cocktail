Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :new, :show, :create, :update ] do
      resources :doses, only: [ :new, :create]
  end
  resources :doses, only: [:destroy]
  root to: "cocktails#index"

end


# resources :restaurants do
#     resources :reviews, only: [ :index, :new, :create ]
#   end
#   resources :reviews, only: [ :show, :edit, :update, :destroy ]
# end
