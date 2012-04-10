class MicropostsController < ApplicationController
  
  # "show" microposts only for logged-in users 
  before_filter :authenticate, :only => [:show, :destroy]
  # Change the header menu before rendering the page
  before_filter :set_contact_path
  
  #Setter
  def micropost=(m)
    @m_micropost=m
  end 
  # Create a new empty object and let it fill by the new-form
  def new
    @m_micropost = Micropost.new
  end
  
  # Create a copy of the object from the form and save it to the database
  def create
    @m_micropost = Micropost.new( params[:micropost] )
    if ( @m_micropost.save )
     # handle success
     flash[:success] = "Nachricht gesendet"
     redirect_to '/home'
    else
      # On failure show the page for a new micropost again with the according error messages (see _error_messages.html.erb)
      render 'new'
    end
  end
  
  def destroy
    Micropost.find_by_id(params[:id]).destroy
    redirect_to '/view_contacts'
  end
  
  def show
    #create a variable that contains a list of all microposts for later usage in the view
    @m_microposts = Micropost.all
  end
end
