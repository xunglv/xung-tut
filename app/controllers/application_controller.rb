class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include SessionsHelper
  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  protect_from_forgery
  filter_parameter_logging :password
end
