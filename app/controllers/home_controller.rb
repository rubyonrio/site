class HomeController < ApplicationController
  before_filter do
    redirect_to '/auth/github' unless session[:user_id]
  end
  
  def index

  end
end
