include ApplicationHelper

class PagesController < ApplicationController
  
  before_filter :authenticate, :only => [:index_demo]
  
  # ApplicationHelper::set_home_xxx
  before_filter :set_hobby_menu, :only => [:hobby, :lakes, :music, :football]
  before_filter :set_development_menu, :only => [:credits]
  
  #test only
  #before_filter :set_en, :only => [:music]
  
  #test only
  #def set_en
  #  I18n.locale = 'en'
  #end

  def home
    @my_partials_subdir = "pages/home/";
  end
  def lakes
  end
  def credits
  end
  def full_width_demo
  end
  def index_demo
  end
  def style_demo
  end
  
end
