class UserMailer < ApplicationMailer
   default from: 'liuchao@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://olivet.com/login'
    mail(to: @user.email, subject: 'Welcome to Olivet University.')
  end
end
