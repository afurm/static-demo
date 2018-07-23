Rails.application.routes.draw do
  
  root 'pages#home'

  get 'pages/about'
  get 'pages/home'
  get 'pages/contact'
  get "/pages/:page" => "pages#show"

  resources :pages do
  	collection do
  		get :show
  	end
  end
end
