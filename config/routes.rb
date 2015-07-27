Rails.application.routes.draw do
  get '/input/:id' => 'application#input'
  get '/new_user' => 'application#user'
  get '/create_user' => 'application#create'
end
