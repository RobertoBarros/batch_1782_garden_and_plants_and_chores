Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: :create
  end

  resources :plants, only: :destroy do
    resources :completions, only: [:new, :create]
  end


  root "gardens#index"
end
