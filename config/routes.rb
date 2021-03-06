Rails.application.routes.draw do

  # 管理者用　URL/admin/sign_in...
  devise_for :admin, skip: [:regisstrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    resources :genres, except: [:new, :show, :destroy]
  end
  
  devise_for :users
  resources :gears
  resources :users, only: %i[index show edit update]
  root 'gears#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
