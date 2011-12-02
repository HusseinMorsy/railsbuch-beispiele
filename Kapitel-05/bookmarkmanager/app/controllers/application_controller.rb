class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
  
  private
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def user_signed_in?
    current_user.present?
  end
  
  helper_method :user_signed_in?  
  
  def set_locale
    I18n.locale = params[:locale]
  end
  
   def default_url_options(options={})
    { locale: I18n.locale }
  end
  
  def locale_path(locale)
    locale_regexp = %r{/(en|de)/?}
    if request.env['PATH_INFO'] =~ locale_regexp
      "#{request.env['PATH_INFO']}".
      gsub(locale_regexp, "/#{locale}/")
    else
      "/#{locale}#{request.env['PATH_INFO']}"
    end
  end
  helper_method :locale_path
end
