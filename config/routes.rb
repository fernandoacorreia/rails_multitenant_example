Rails.application.routes.draw do
  constraints(SubdomainConstraint) do
    resources :articles
  end

  resources :authors

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
