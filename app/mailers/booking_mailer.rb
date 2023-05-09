# class BookingMailer < ApplicationMailer
#   class BookingMailer < ApplicationMailer
#     def booking_confirmation(booking)
#       @booking = booking
#       mail(to: @booking.email, subject: 'Booking Confirmation')
#     end
#   end
# end


class BookingMailer < ApplicationMailer

def welcome_email
  @customer = params[:customer]
  @booking = params[:booking]
  mail(to: @customer.email, subject: 'Welcome to Our Hotel')
end
end