Rails.application.routes.draw do
  resources :task_managements, except: [:destroy] do
      post :status_update, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
