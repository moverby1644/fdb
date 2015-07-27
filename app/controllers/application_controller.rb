class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def input
    @end = End.find_by_id(params['id'])
    render 'input'
  end
  
  def user
    render 'user'
  end
  
  def create
    e = End.new
    e.name = params['name']
    e.email = params['email']
    e.save
    redirect_to "/input/#{ e.id }"
  end
end