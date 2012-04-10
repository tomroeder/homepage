class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
   before_filter :set_locale
   
    # For Internationalization : auto-adds a postfix to all sites according to the currently set locale
    def default_url_options(options={})
      { :locale => I18n.locale }
    end
    
protected

    # Get the parameter from the ...?locale=... - part of the url and set the I18n.locale - variable accordingly
    # that means, going to a link with ...?locale=newlanguage anywhere in the app switches the I18n.locale - variable permanently
    def set_locale
      I18n.locale = params[:locale] unless params[:locale].blank?
    end
end
