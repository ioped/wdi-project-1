class UserMailer < ActionMailer::Base
  default from: "maltezpedro@gmail.com"

  def registration_email(user)
    @user = user
    @url = "http://localhost:3000/register/#{user.code}"
    mail to: user.email, subject: "Complete your GameStats registration"
  end
end
