# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'fc86fd4bfda299c3b079191a8f948013'

  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

  before_filter :set_locale


  def set_locale
    # update session if passed
    session[:locale] = params[:locale] if params[:locale]

    # set locale based on session or default 
    I18n.locale = session[:locale] || I18n.default_locale

    # load locale from settings
    @locale_files = []
    ['yml', 'rb'].each do |type|
      locale_file = "#{LOCALES_DIRECTORY}#{I18n.locale}.#{type}"
      if File.exists?(locale_file)
        @locale_files << locale_file
        I18n.load_translations locale_file
      end
    end
  end
end
