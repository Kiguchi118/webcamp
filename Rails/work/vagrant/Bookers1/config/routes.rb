Rails.application.routes.draw do
  resources :books, expect: [:show, :new, :edit]
  root to: 'books#top'
end
