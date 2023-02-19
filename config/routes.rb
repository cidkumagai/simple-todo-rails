Rails.application.routes.draw do
  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#add_todo'
  put 'todos/:id', to: 'todos#toggle_completed'
end
