Rails.application.routes.draw do
  LOCALES = /en|pt\-BR/
    scope "(:locale)" , :locale => /en|pt\-BR/ do
    resources :rooms
    resources :users
  
    resource :confirmation, :only => [:show]
    end
  
    get '/:locale' => 'home#index' , :locale => LOCALES
    root :to => "home#index"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  