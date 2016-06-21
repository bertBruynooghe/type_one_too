desc "email delivery"
task email_delivery: :environment do |t|
  MailConfig.all.find_each do |mail_config|
    User.where(nil).find_each do |user|
      unless user.mail_configs.include?(mail_config)
        UserMailer.parametric_email(user, mail_config).deliver_now
        user.mail_configs << mail_config
        user.save
      end
    end
  end
end
