class HomeController < ApplicationController
  
  def index
    @team = Team.new
  end
end
