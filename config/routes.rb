Rails.application.routes.draw do
  
  scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :users
    resources :descriptions
    resources :tags
    resources :breweries
    
  end
end
