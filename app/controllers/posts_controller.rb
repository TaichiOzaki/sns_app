class PostsController < ApplicationController
 def new
  render :new # renders app/views/posts/new.html.erb
 end
 
 def index
  render :index  # renders app/views/posts/index.html.erb
 end
 
 def create
  redirect_to new_post_path # redirects to GET "/posts/new"
 end
 
end
