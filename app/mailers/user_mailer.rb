class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signin_confirmation.subject
  #
  def signin_confirmation(user, pw)
    puts "eMail geht raus ..."
    @user = user
    @pw = pw
    mail to: @user.email, 
    bcc: "wurmhorst63@gmail.com",
    subject: "Bestätigung Passwortänderung für Klaus wird 50!"
  end
end
