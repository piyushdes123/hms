# class BookingMailer < ApplicationMailer
#   class BookingMailer < ApplicationMailer
#     def booking_confirmation(booking)
#       @booking = booking
#       mail(to: @booking.email, subject: 'Booking Confirmation')
#     end
#   end
# end


class BookingMailer < ApplicationMailer
default from: 'testing16538@gmail.com'
  def welcome_email
    @customer = params[:customer]
    @booking = params[:booking]
    mail(to: current_customer.email, subject: 'Welcome to My Awesome Site')
  end
end


