Rails.application.routes.draw do

  # resources (singleton)
  resource :example, only: :show, format: 'docx'

  # root
  root to: 'examples#show', format: 'docx'

end
