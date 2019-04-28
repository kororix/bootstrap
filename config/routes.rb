Rails.application.routes.draw do
  resources :boots do
    collection do
      post :confirm
    end
  end
end
