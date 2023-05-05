class BookingMailer < ApplicationMailer
  def new_booking_email
    @booking = params[:booking]

    mail(to: <ADMIN_EMAIL>, subject: "You got a new booking!")
  end
end
