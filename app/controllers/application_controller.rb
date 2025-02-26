class ApplicationController < ActionController::Base
def new
  render :template => "places/new"
end
end
