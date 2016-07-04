class MailConfigTestsController < ApplicationController
  def create
    mail_config = MailConfig.find(params[:mail_config_id])
    #TODO shouldn't this be a method on mail_config?
    UserMailer.parametric_email(current_user, mail_config).deliver_now
  end
end
