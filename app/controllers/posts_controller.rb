class PostsController < ApplicationController
  def index
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @post = Post.new


    # assign user-entered form data to Post's columns
    @post["activity"] = params["activity"]
    @post["date"] = params["date"]
    @post["details"] = params["details"]
    @post["image"] = params["image"]
    @post["place_id"] = params["place_id"]
    # save Post row
    @post.save


    # redirect user
    redirect_to "/places/#{@post["place_id"]}"
  end

end