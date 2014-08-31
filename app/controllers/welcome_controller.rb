class WelcomeController < ApplicationController

  before_action :authenticate_user!
  
  def index
    logger.info "*****"
    logger.info user_signed_in?
  end
end
