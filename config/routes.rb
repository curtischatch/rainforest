Rails.application.routes.draw do
  resources :products do

    resources :reviews, except: [:index, :new, :show]

  end

  root 'products#index'
  get '/products' => 'products#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
