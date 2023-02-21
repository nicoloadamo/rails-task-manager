Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list all
  get "tasks", to: "tasks#index"
  # create
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  # read one
  get "tasks/:id", to:"tasks#show", as: :task
  # update one
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # delete one
  delete "tasks/:id", to:"tasks#destroy"

end
