Rails.application.routes.draw do

  get 'doses/new'

  get 'doses/destroy'

  get 'doses/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :new, :show, :create ]
end


# resources :restaurants do
#     resources :reviews, only: [ :index, :new, :create ]
#   end
#   resources :reviews, only: [ :show, :edit, :update, :destroy ]
# end
