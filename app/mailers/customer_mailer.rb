class CustomerMailer < ActionMailer::Base
  default from: "silsdenboats@pintsize.it"

  def confirmationEmail(customer, booking, boat)
  	@customer = customer
  	@booking = booking
  	@boat = boat
  	attachments['bookingform.pdf'] = File.read('/danDev/a2/app/assets/bookingform.pdf')
  	mail(:to => customer.emailAddress, :subject => "Thankyou for your booking.")
  end
end