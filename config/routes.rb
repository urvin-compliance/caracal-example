Rails.application.routes.draw do
  
  # resources (singleton)
  resource :example, only: :show
  
  # root
  root 'examples#show'
  
end
