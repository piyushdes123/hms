class BookingsController < ApplicationController

  before_action :set_hotel, only: [:new, :index, :create]


  def index
    @rooms = Room.all
  end


  def bookings
    @bookings = Booking.all
    @roomtype = Roomtype.all
  end


  def new
    @booking = Booking.new
    @room = Room.all
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])

    @booking = @room.bookings.create(booking_params)

   @room.update(status:"unavailable")

    if @booking.save 
      # BookingMailer.with(booking: @booking).new_booking_email.deliver_later

      flash[:success] = 'Product has been added Successfully!'   

      redirect_to  root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def set_hotel
    # @room = Room.find(params[:room_id])
  end 

  def booking_params
    params.require(:booking).permit(:customer_id, :booking_date, :check_in, :check_out)
  end

end  