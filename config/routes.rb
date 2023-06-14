Rails.application.routes.draw do
  resources :people
  # get 'people', to: 'people#index'
  # get 'people/:id', to: 'people:#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'students', to: 'student#index'
  get 'students/:id', to: 'student#get_student'

  get 'books', to: 'book#index'
  get 'books/:id', to: 'book#get_book'
  get 'books/show/:noOfBooks', to: 'book#show_books'
  get 'songs', to: 'songs#index'
  get 'songs/:id', to: 'songs#show'
  get 'songs/duration/:duration', to: 'songs#show_songs_per_duration'

  get '/', to: 'application#index'
end
