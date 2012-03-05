class PagesController < ApplicationController
  
  before_filter :authenticate, :only => [:index_demo]
   
  def home
    @my_partials_subdir = "pages/home/";
  end
  def full_width_demo
  end
  def index_demo
  end
  def style_demo
  end
end
