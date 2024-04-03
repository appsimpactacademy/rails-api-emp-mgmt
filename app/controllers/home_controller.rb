class HomeController < ApplicationController
  def index
    Rails.logger.info('Print the info on local')
  end
end
