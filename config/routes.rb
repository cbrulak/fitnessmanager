FitnessManager::Application.routes.draw do
  resources :workout_sets


  devise_for :users
  root :to => "workout_sets#index"
end
