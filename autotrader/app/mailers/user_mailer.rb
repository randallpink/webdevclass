class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.vehicle_confirmation.subject
  #
  def vehicle_confirmation(vehicle_id)
		
		@greeting = "Hi"
		@vehicle = Vehicle.find(vehicle_id) # Setting vehicle variable
		mail to: "@vehicle.user.email",      # Setting recipient to the vehicle's user
		subject: "Vehicle Confirmation",
		from: "confirmations@autotrader.com"
  end
end
