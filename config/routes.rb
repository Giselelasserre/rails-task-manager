Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "tasks", to: "tasks#all"
  get "tasks/:id", to: "tasks#show"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end


# GET '/tasks': get all your tasks.
# GET '/tasks/:id': get a precise task, e.g GET '/tasks/3' fetches the task with id=3
# GET '/tasks/new': get the form to create a new task
# POST '/tasks': post a new task
# GET '/tasks/:id/edit': get the form to edit an existing task
# PATCH '/tasks/:id': update an existing task
# DELETE '/tasks/:id': delete an existing task
