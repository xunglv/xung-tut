class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include SessionsHelper
  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  protect_from_forgery
  config.filter_parameters  :password
end
