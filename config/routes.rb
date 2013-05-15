NewspaperApp::Application.routes.draw do
  root to: 'newspapers#index'
  resources :newspapers
end
