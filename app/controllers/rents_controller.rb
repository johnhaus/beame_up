class RentsController < ApplicationController

  def new
    @rent = Rent.new
  end


end
