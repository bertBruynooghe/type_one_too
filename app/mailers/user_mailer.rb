class UserMailer < ApplicationMailer
  def parametric_email(user, mail_config)
    @user = user
    @mail_config = mail_config
    mail(to: @user.email, subject: 'TODO: subject from mail_config')
  end
  def parametric_email(user, mail_config)
    @user = user
    @mail_config = mail_config
    mail(to: @user.email, subject: 'TODO: subject from mail_config')
  end
end
