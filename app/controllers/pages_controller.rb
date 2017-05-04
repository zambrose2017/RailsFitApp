class PagesController < ApplicationController
  def about
    @posts = Blog.all
  end

  def home
  end

  def workout
  end

  def nutrition
  end

  def faq
  end
end
