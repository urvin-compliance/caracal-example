Rails.application.routes.draw do

  # resources (singleton)
  resource :example, only: :show, format: 'docx'

  # root
  root to: 'homes#show'

end
