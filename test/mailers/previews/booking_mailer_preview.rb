# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
  def new_booking_email
    # Set up a temporary order for the preview
    booking = Booking.new(name: "Joe Smith", email: "joe@gmail.com", address: "1-2-3 Chuo, Tokyo, 333-0000", phone: "090-7777-8888", message: "I want to place an order!")

    BookingMailer.with(booking: booking).new_booking_email
  end
end
