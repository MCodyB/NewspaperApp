NewspaperApp::Application.routes.draw do
  root to: 'newspapers#index'
  resources :newspapers do
    resources :subscription_plans
  end

  resources :users
end
