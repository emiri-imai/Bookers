Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  get 'books' => 'books#index',as: 'book_index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book_show'
  get '/books/show' => 'book#show'
  get 'back' => 'books#index'
  post 'books/:id' => 'books#show'



end
