class ApplicationController < ActionController::Base
  before_filter :authenticate_company!
  protect_from_forgery
end
