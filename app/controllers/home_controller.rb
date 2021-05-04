class HomeController < ApplicationController
  def index
    @rooms = Room.limit(3)
  end
  
  def complete_name
    "#{title}, #{location}"
  end
end