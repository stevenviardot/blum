class PagesController < ApplicationController
  def home
    @posts = Post.all.order("created_at DESC")
  end

  def contact
  end
end
