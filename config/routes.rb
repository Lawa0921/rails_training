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
end
