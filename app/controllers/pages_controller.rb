class PagesController < ApplicationController
  def home
    redirect_to user_path(User.find(session[:user_id])) if logged_in?
  end

  def about
    @article_show = Article.all
   
  end
end
