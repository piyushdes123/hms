class BookingsController < ApplicationController

  def index
   @rooms = Room.all
end

def bookings
    @bookings = current_customer.bookings
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

  if @booking.check_out
    @days = (@booking.check_out.to_date - @booking.check_in.to_date).to_i
    @booking.charges = @booking.room.roomtype.cost * @days
  end 
   
    if @booking.save
        BookingMailer.with(customer: current_customer, booking: @booking).welcome_email .deliver_now
      flash[:success] = 'Booking has been Done Successfully!'   
      redirect_to  root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
     @booking = Booking.find(params[:id])
     @booking.destroy

    flash[:success] = 'Booking has been Delete Successfully!'   
    redirect_to bookings_bookings_path, status: :see_other
  end

 private
  def booking_params
    params.require(:booking).permit(:customer_id, :booking_date, :check_in, :check_out)
  end
end 