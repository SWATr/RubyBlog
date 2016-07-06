class PagesController < ApplicationController

  skip_before_filter :authorize

  def news
  end

  def videos
  end

  def diy
  end
  
  def food
  end
  
end
