class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
  end

  def favorite
    post = Post.find params[:id]

    current_user.add_favorite post

    redirect_to "/posts/#{post.id}"
  end
end