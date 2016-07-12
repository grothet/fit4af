class UserMailer < ApplicationMailer
	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Wilkommen", body:"Mailinhalt")
	end
end
