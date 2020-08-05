Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  scope :admin do
    devise_for :admins
    resources :goods do
      member do
        delete :remove_photo, path: "/:photo_id"
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
