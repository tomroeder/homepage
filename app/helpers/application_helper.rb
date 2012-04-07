module ApplicationHelper
  
  #Call our own current_menu= method
  def set_home_menu
    self.current_menu = :home
  end
  def set_hobby_menu
    self.current_menu = :hobby
  end
  def set_development_menu
    self.current_menu = :develop
  end
  def set_contact_path
    self.current_menu = :contact
  end
  
  # set the @current_menu variable
  def current_menu=(menu)
    @current_menu = menu
  end
  
  # get the @current_menu variable
  def current_menu
    @current_menu
  end
  
private 

end
