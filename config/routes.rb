Mentor::Application.routes.draw do
  namespace :admin do
    resources :questions, except: [:show]
    resources :answers, only: [:create]
  end
end
