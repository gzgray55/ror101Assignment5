class PostsController < ApplicationController

  def index
    @post = Post.all
  end

def new
    @question = Question.new
end

end
