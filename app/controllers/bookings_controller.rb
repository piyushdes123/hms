class BookingsController < ApplicationController
  def index
    @rooms = Room.all

  end
end
