FitnessManager::Application.routes.draw do
  resources :workout_sets
  resources :weight_reps

  devise_for :users
  root :to => "workout_sets#index"
end
